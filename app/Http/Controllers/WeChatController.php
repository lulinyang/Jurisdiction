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
            'appid' => 'wxea0093b6f63e9001',
            'secret' => '11a9bd0194f09a5af81ece46ad830c99'
        ];
        
        $app = Factory::officialAccount($config);
        
        // 获取 access token 实例
        $accessToken = $app->access_token;
        dd($accessToken);
        $token = $accessToken->getToken(); // token 数组  token['access_token'] 字符串
        $token = $accessToken->getToken(true); // 强制重新从微信服务器获取 token.
        dd($token);
    }
}
