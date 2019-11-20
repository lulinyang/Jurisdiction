<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebSocketController extends Controller
{
    //
    public function test(\Swoole\WebSocket\Server $server)
    {
        echo 'aaa';
        foreach ($server->connections as $fd){
            $server->push($fd,'aaaaaaaaaaa');
        }
    }
}
