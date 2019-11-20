<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebSocketController extends Controller
{
    //
    public function test($params)
    {   
        var_dump($params);
        echo 'aaa';
        // foreach ($server->connections as $fd){
        //     $server->push($fd,'aaaaaaaaaaa');
        // }
    }
}
