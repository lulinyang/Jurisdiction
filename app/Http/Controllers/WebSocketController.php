<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Support\Facades\Redis;
/**
 * 100 全局消息
 */
class WebSocketController extends Controller
{
    
    public function test($server, $content, $sendfd)
    {   
        // //推送给所有链接
        foreach ($server->connections as $fd){
            $server->push($fd,$content);
        }
    }

    public function add($server, $content, $sendfd)
    {   
        // //推送给所有链接
        foreach ($server->connections as $fd){
            $server->push($fd,$content.'------------>');
        }
    }
    
    //
    public function getChatList($server, $uid, $sendfd) 
    {
        
        $res = DB::table('cms_chat_list as l')
            ->join('cms_user as c', 'c.id', '=', 'l.chat_id')
            ->where('l.uid', $uid)
            ->orderBy('l.created_at', 'desc')
            ->select(
				'c.*', 
				'l.created_at as chat_time', 
				'l.msgType', 
				'l.content',
				DB::raw("(SELECT COUNT(id) FROM cms_chat WHERE deleted = 0 AND isRead = 0 AND to_id = l.uid) as unread_num")
			)
            ->get();
        $data = collect(returnArr($res, 100, 'success'))->toJson();
        $server->push($sendfd, $data);
    }

    /**
     * 私信
     */
    public function saveChat($server, $content, $sendfd)
    {   
        $arr = [
			'from_id' => $content['from_id'],
			'to_id' => $content['to_id'],
			'msgType' => $content['msgType'],
			'content' => $content['content'],
			'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];
        //把最后一条消息同步到聊天列表，方便查询
		DB::table('cms_chat_list')
            ->where('chat_id', $content['uid'])
            ->orWhere('chat_id', $content['to_id'])->delete();
        $chat_list = [
            [
                'uid' => $arr['from_id'],
                'chat_id' => $arr['to_id'],
                'msgType' => $arr['msgType'],
                'content' => $arr['content'],
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ],
            [
                'uid' => $arr['to_id'],
                'chat_id' => $arr['from_id'],
                'msgType' => $arr['msgType'],
                'content' => $arr['content'],
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]
        ];
        DB::table('cms_chat_list')->insert($chat_list);


        $content['id'] = DB::table('cms_chat')->insertGetId($arr);
        $arr['id'] = $content['from_id'];
        $ids = DB::table('cms_user')->whereIn('id', [$content['from_id'], $content['to_id']])->get(['id']);
        $fds = [];
        foreach($ids as $val) {
            $fds = array_merge($fds, Redis::sMembers('uid_'.$val->id));
        }
        //获取所有在线fd
        $connections = [];
        foreach ($server->connections as $fd){
            $connections[] = $fd;
        }
        foreach($fds as $val) {
            //只发在线人员
            if(in_array($val, $connections)) {
                $server->push($val, collect($content)->toJson());
            }
        }
    }
    
}
