<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebSocketController extends Controller
{
    //
    public function test($server, $content)
    {   
        // var_dump($params);
        echo 'aaa';
        // foreach ($server->connections as $fd){
        //     $server->push($fd,'aaaaaaaaaaa');
        // }
        // //推送给所有链接
        foreach ($server->connections as $fd){
            $server->push($fd,$content);
        }
    }
}
