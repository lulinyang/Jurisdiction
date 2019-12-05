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
        $arr = [
			'from_id' => $content['uid'],
			'to_id' => $content['to_id'],
			'msgType' => $content['msgType'],
			'content' => $content['content'],
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s')
		];
        $id = DB::table('cms_chat')->insertGetId($arr);
        DB::table('cms_user')->whereIn('id', [$content['uid'], $content['to_id']])->get(['fd']);
        $fds = DB::table('cms_user')->whereIn('id', [$content['uid'], $content['to_id']])->get(['fd']);
        $res = collect($arr)->toJson();
        var_dump($res);
        foreach($fds as $val) {
            $server->push($val->fd, $res);
        }
    }
    
}
