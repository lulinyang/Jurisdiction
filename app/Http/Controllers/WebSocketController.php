<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebSocketController extends Controller
{
    //
    public function test(Request $request)
    {   
        // var_dump($request->transId);
        echo 'aaa';
        // foreach ($server->connections as $fd){
        //     $server->push($fd,'aaaaaaaaaaa');
        // }
    }
}
