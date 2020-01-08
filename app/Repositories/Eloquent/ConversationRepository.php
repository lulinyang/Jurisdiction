<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;
 
class ConversationRepository extends Repository
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
		return 'App\\Models\\Conversation';
	}

	public function pushConversation($request)
	{
		$data = $request->all();
		if (!isset($data['uid'])) {
            return returnArr(false, 20001, '为获取到uid！');
		}
		// dd(!$data['imgs']);
		if ((isset($data['content']) && $data['content']) || (isset($data['imgs']) && $data['imgs'])) {
			$data['created_at'] = date("Y-m-d H:i:s", time());
			$res = $this->create($data);
			if($res) {
				return returnArr($res, 200, "发布成功");
			}
			return returnArr(false, 20002, "发布失败");
        }else {
			return returnArr(false, 20003, '图片和内容不能同时为空');
		}
	}

	public function getConversationList($request)
	{
		$params = $request->all();
		$pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
		$ancestral_id = isset($params['ancestral_id']) ? $params['ancestral_id'] : '-1';
		$name = isset($params['name']) ? $params['name'] : '';
		$flied = 'c.ancestral_id';
		if($ancestral_id === '-1') {
			$flied = 'c.deleted';
			$ancestral_id = 0;
		}
		$paginate = DB::table('cms_conversation as c')
			->leftjoin('cms_user as u', function ($join) {
				$join->on('c.uid', '=', 'u.id');
			})
			->Where('c.deleted', '=', '0')
			->Where('u.deleted', '=', '0')
			->where($flied, $ancestral_id)
			->where('u.name', 'like', "%{$name}%")
			->orderBy('c.created_at', 'desc')
			->select(
				'c.*', 
				'u.id as uid', 
				'u.name', 
				'u.sex', 
				'u.headUrl',
				DB::raw("(SELECT COUNT(id) FROM cms_fabulous WHERE type = 3 AND theme_id = c.id) as fabulous_num"),
				DB::raw("(SELECT COUNT(id) FROM cms_comment WHERE type = 3 AND theme_id = c.id) as comment_num"),
				DB::raw("(SELECT name FROM cms_ancestral_hall WHERE id = c.ancestral_id) as ancestral_name")
			)
			// ->toSql();
			// return returnArr($paginate);
			->paginate($pageSize);
        return collection(returnArr($paginate));
	}

	public function getConversationById($request)
	{
		$params = $request->all();
		if (!isset($params['id'])) {
            return returnArr(false, 20001, '缺少ID参数！');
		}
		
		$res =DB::table('cms_conversation as c')
			->leftjoin('cms_user as u', function ($join) {
				$join->on('c.uid', '=', 'u.id');
			})
			->Where('c.id', '=', $params['id'])
			->Where('c.deleted', '=', '0')
			->Where('u.deleted', '=', '0')
			->select(
				'c.*', 
				'u.id as uid', 
				'u.name', 
				'u.sex', 
				'u.headUrl',
				DB::raw("(SELECT COUNT(id) FROM cms_fabulous WHERE type = 3 AND theme_id = c.id) as fabulous_num"),
				DB::raw("(SELECT COUNT(id) FROM cms_comment WHERE type = 3 AND theme_id = c.id) as comment_num")
			)
			// ->toSql();
			->first();
		if($res) {
			//是否点赞/收藏
			$fabulous = false;
			if (isset($params['uid'])) {
				$result = DB::table('cms_fabulous')
					->where([
						'type' => 3,
						'uid' => $params['uid'],
						'theme_id' => $params['id']
					])->first();
				$fabulous = $result ? true : false;
			}
			$res->isFabulous = $fabulous;
			return returnArr($res);
		}
		return returnArr(false, 20002, '没有数据！');
	}

	public function addBrowseNum($request)
    {
        $params = $request->all();
        if (isset($params['id'])) {
            $res = DB::table('cms_conversation')->where('id', $params['id'])->increment('browse_volume');
            return returnArr($res);
        }
	}
	
	public function delConversationList($request)
	{
		$params = $request->all();
		if (!isset($params['id'])) {
            return returnArr(false, 20001, '缺少ID参数！');
		}
       
		$res = DB::table('cms_conversation')->where('id', $params['id'])->update(['deleted' => 1]);
		return returnArr($res);  
	}

	public function getMyTopic($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
            return returnArr(false, 20000, '请先登录！');
		}

		$pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
		$paginate = DB::table('cms_conversation as c')
			->leftjoin('cms_user as u', function ($join) {
				$join->on('c.uid', '=', 'u.id');
			})
			->Where('c.deleted', '=', '0')
			->Where('u.deleted', '=', '0')
			->Where('c.uid', '=', $params['uid'])
			->orderBy('c.created_at', 'desc')
			->select(
				'c.*', 
				'u.id as uid', 
				'u.name', 
				'u.sex', 
				'u.headUrl',
				DB::raw("(SELECT COUNT(id) FROM cms_fabulous WHERE type = 3 AND theme_id = c.id) as fabulous_num"),
				DB::raw("(SELECT COUNT(id) FROM cms_comment WHERE type = 3 AND theme_id = c.id) as comment_num"),
				DB::raw("(SELECT name FROM cms_ancestral_hall WHERE id = c.ancestral_id) as ancestral_name")
			)
			->paginate($pageSize);
        return collection(returnArr($paginate));
	}
}