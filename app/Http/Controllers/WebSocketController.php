<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Support\Facades\Redis;

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
        DB::table('cms_chat')->insert($arr);
        $ids = DB::table('cms_user')->whereIn('id', [$content['uid'], $content['to_id']])->get(['id']);
        $fds = [];
        foreach($ids as $val) {
            $fds = array_merge($arr, Redis::sMembers('uid_'.$val->id));
        }
        foreach($fds as $val) {
            $server->push($val, implode(",", $fds));
        }
    }
    
}
