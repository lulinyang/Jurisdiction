<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Log;
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
}
