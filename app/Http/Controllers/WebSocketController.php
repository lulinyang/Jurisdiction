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
        // $fromIds = DB::table('cms_chat')
		// 	->where([
		// 		'to_id'=> $content,
		// 		'deleted' => 0
        //     ])->where('from_id', '<>', $content)
        //     ->distinct()
        //     ->get(['from_id']);

        // $toIds = DB::table('cms_chat')
		// 	->where([
		// 		'from_id'=> $content,
        //         'deleted' => 0,
        //     ])->where('to_id', '<>', $content)
        //     ->distinct()
        // 	->get(['to_id']);
        $chatIds = DB::table('cms_chat')
            ->where('deleted', 0)
            ->where(function ($query) {
                $query->where('to_id', $uid)->orWhere('from_id', $uid);
            })
            ->orderBy('created_at', 'desc')
            ->get();
		$ids = [];
		foreach($fromIds as $val) {
			$ids[] = $val->from_id;
        }
        
        foreach($toIds as $val) {
			$ids[] = $val->to_id;
		}
        $res = DB::table('cms_user')->whereIn('id', $ids)->get();
        $data = collect(returnArr($res, 100, 'success'))->toJson();
        $server->push($sendfd, $data);
    }

    /**
     * 私信
     */
    public function saveChat($server, $content, $sendfd)
    {   
        $arr = [
			'from_id' => $content['uid'],
			'to_id' => $content['to_id'],
			'msgType' => $content['msgType'],
			'content' => $content['content'],
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s')
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


        DB::table('cms_chat')->insert($arr);
        $ids = DB::table('cms_user')->whereIn('id', [$content['uid'], $content['to_id']])->get(['id']);
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
                $server->push($val, implode(",", $fds));
            }
        }
    }
    
}
