<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Log;
use EasyWeChat\Factory;
use Illuminate\Support\Facades\Redis;

class WeChatController extends BaseController
{
    public function serve()
    {
        Log::info('request arrived.'); 
        $app = app('wechat.official_account');
        $app->server->push(function($message){
            return "欢迎关注 overtrue！";
        });
        return $app->server->serve();
    }

    public function getToken()
    {        
        $access_token = Redis::get('access_token');
        if($access_token) {
            $result = [
                'code' => '200',
                'access_token' => $access_token,
                'mgs' => 'ok'
            ];
            $result = collect(collection($result))->toJson();
        }else{
            $config = [
                'app_id' => getenv('WECHAT_OFFICIAL_ACCOUNT_APPI'),
                'secret' => getenv('WECHAT_OFFICIAL_ACCOUNT_SECRET')
            ];
            $app = Factory::officialAccount($config);
            $accessToken = $app->access_token;
            try {
                $token = $accessToken->getToken(true);
                Redis::setex('access_token', ($token['expires_in'] - 100) ,$token['access_token']);
            } catch (\Exception $e) {
                dd($e->getMessage(), $e->formattedResponse, $e);
            }
           
            $result = [
                'code' => '200',
                'access_token' => $token['access_token'],
                'mgs' => 'ok'
            ];
            $result = collect(collection($result))->toJson();
        }
        return $result;
    }
}
