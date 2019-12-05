<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class ChatRepository extends Repository
{
  
 	public function __construct(Client $http, App $app)
    {
        parent::__construct($app);
        $this->http = $http;
    }
	/**
	 * Specify Model class name
	* 
	* @return string
	*/
	public function model()
	{
		//set model name in here, this is necessary!
		return 'App\\Models\\Chat';
	}
	
	public function saveChat($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
            return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['to_id'])) {
            return returnArr(false, 20001, '缺少to_id参数！');
		}

		if (!isset($params['msgType'])) {
            return returnArr(false, 20002, '缺少msgType参数！');
		}

		if (!isset($params['content'])) {
            return returnArr(false, 20003, '内容不能为空！');
		}
	
		$arr = [
			'from_id' => $params['uid'],
			'to_id' => $params['to_id'],
			'msgType' => $params['msgType'],
			'content' => $params['content'],
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s')
		];

		//把最后一条消息同步到聊天列表，方便查询
		DB::table('cms_chat_list')
			->where('chat_id', $params['uid'])
			->orWhere('chat_id', $params['to_id'])->delete();
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
		$res = DB::table('cms_chat')->insert($arr);
        if ($res) {
            return returnArr($res, 200, '发送成功！');
		}
		return returnArr($res, 20004, '发送失败！');
	}

	public function getPrivateLetterList($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
            return returnArr(false, 20000, '请先登录！');
		}
		$chatList = DB::table('cms_chat_list as l')
			->join('cms_user as c', 'c.id', '=', 'l.chat_id')
			->where('l.uid', $params['uid'])
			->orderBy('l.created_at', 'desc')
			->select(
				'c.*', 
				'l.created_at as chat_time', 
				'l.msgType', 
				'l.content',
				DB::raw("(SELECT COUNT(id) FROM cms_chat WHERE deleted = 0 AND to_id = l.uid) as unread_num")
			)
            ->get();
		dd($chatList);
		// $res = DB::table('cms_user')->whereIn('id', $ids)->get();
	
	}
}