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
		$res = DB::table('cms_chat')->insert($arr);
        if ($res) {
            return returnArr($res, 200, '发送成功！');
		}
		return returnArr($res, 20004, '发送失败！');
	}
}