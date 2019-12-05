<?php

namespace App\Http\Controllers;
use DB;
// use Illuminate\Http\Request;

class WebSocketController extends Controller
{
    public function test($server, $content)
    {   
        // //推送给所有链接
        foreach ($server->connections as $fd){
            $server->push($fd,$content);
        }
    }

    public function add($server, $content)
    {   
        // //推送给所有链接
        foreach ($server->connections as $fd){
            $server->push($fd,$content.'------------>');
        }
    }
    
    public function bindfd($server, $content) 
    {
        // //推送给所有链接
        foreach ($server->connections as $fd){
            $server->push($fd, $content);
        }
    }

    /**
     * 私信
     */
    public function saveChat($server, $content)
    {   
        $user = DB::table('cms_user')->whereIn('id', [$content['uid'], $content['to_id']])->get();
        $res = collect($user)->toJson();
        foreach ($server->connections as $fd){
            $server->push($fd, $res);
        }
    }
    
}
