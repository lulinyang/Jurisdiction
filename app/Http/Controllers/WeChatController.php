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
            'app_id' => getenv('appid'),
            'secret' => getenv('secret')
        ];
        
        $app = Factory::officialAccount($config);
        $accessToken = $app->access_token;
        $token = $accessToken->getToken(true);
        // $token = $accessToken->getToken(true); // 强制重新从微信服务器获取 token.
        dd($token);
    }
}
