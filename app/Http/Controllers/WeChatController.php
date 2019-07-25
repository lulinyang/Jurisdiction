<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Log;
use EasyWeChat\Factory;

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
        $config = [
            'app_id' => getenv('WECHAT_OFFICIAL_ACCOUNT_APPID'),
            'secret' => getenv('WECHAT_OFFICIAL_ACCOUNT_SECRET')
        ];
        
        $app = Factory::officialAccount($config);
        $accessToken = $app->access_token;
        // $token = $accessToken->getToken();
        $token = $accessToken->getToken();
        dd($token, $token['access_token']);
    }
}
