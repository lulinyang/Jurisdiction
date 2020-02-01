<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;
 
class CelebrityRepository extends Repository
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
		return 'App\\Models\\Celebrity';
	}

	public function addCelebrity($request) 
    {
		$params = $request->all();

		if (!isset($params['name'])) {
			return returnArr(false, 20001, '姓名必填！');
		}

		if (!isset($params['describe'])) {
			return returnArr(false, 20002, '描述必填！');
		}

		if (!isset($params['content'])) {
			return returnArr(false, 20003, '简介必填！');
		}

		$userId = \Auth::guard('customer')->user()->id;
		if(!isset($params['id'])) {
			$params['created_user'] = $userId;
			$params['created_at'] = date('Y-m-d H:i:s');
			$res = $this->create($params);
			if($res) {
				return returnArr($res, 200, '添加成功！');
			}
			return returnArr($res, 20005, '添加失败！');
		}else {
			$params['updated_at'] = date('Y-m-d H:i:s');
			$res = $this->update($params, $params['id']);
			if($res) {
				return returnArr($res, 200, '修改成功！');
			}	
			return returnArr($res, 20005, '修改失败！');
		}
	}
	
	public function getCelebrity($request)
	{
		$params = $request->all();
		$pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
		$name = isset($params['name']) ? $params['name'] : '';
		$name_word = isset($params['name_word']) ? $params['name_word'] : '';
		$active = isset($params['active']) ? $params['active'] : 0;
		if($active === 0) {
			$orderby = 'a.created_at';
		}else {
			$orderby = 'a.browse_num';
		}
		$paginate = DB::table('cms_celebrity as a')
                    ->leftJoin('cms_customer as c', function ($join) {
                        $join->on('a.created_user', '=', 'c.id');
					})->Where('a.name', 'like', "%{$name}%")
					->Where('a.name_word', 'like', "%{$name_word}%")
					->Where('a.deleted', 0)
					->orderBy($orderby, 'desc')
					->select(
						'a.*',
						'c.username as created_user_name',
						DB::raw("(SELECT COUNT(id) FROM cms_comment WHERE type = 5 AND theme_id = a.id) as comment_num")
					)
					->paginate($pageSize);
		return returnArr(collection($paginate));
	}

	public function getCelebrityById($request) 
	{
		$params = $request->all();
		if (!isset($params['id'])) {
			return returnArr(false, 20001, '缺少ID参数！');
		}
		$res = $this->findBy('id', $params['id']);
		return returnArr($res);
	}

	public function delCelebrity($request)
	{
		$params = $request->all();
		if (!isset($params['id'])) {
			return returnArr(false, 20001, '缺少ID参数！');
		}
		$params['updated_at'] = date('Y-m-d H:i:s');
		$params['deleted'] = 1;
		$res = $this->update($params, $params['id']);
		if($res) {
			return returnArr($res, 200, '删除成功！');
		}	
		return returnArr($res, 20005, '删除失败！');
	}

	public function getCelebrityInfo($request)
	{
		$params = $request->all();
        if (!isset($params['id'])) {
            return returnArr(false, 20001, '缺少参数id！');
        }
        //是否点赞/收藏
        $fabulous = false;
        $collection = false;
        if (isset($params['uid'])) {
            $result = DB::table('cms_fabulous')
                ->where([
                    'type' => 5,
                    'uid' => $params['uid'],
                    'theme_id' => $params['id']
                ])->first();

            $result2 = DB::table('cms_collection')
                ->where([
                    'type' => 5,
                    'uid' => $params['uid'],
                    'theme_id' => $params['id']
                ])->first();        
            $fabulous = $result ? true : false;
            $collection = $result2 ? true : false;
        }
        //点赞总数
        $fabulous_num = DB::table('cms_fabulous')
            ->where([
                'type' => 5,
                'theme_id' => $params['id']
            ])->count();
        //收藏总数
        $collection_num  = DB::table('cms_collection')
        ->where([
            'type' => 5,
            'theme_id' => $params['id']
        ])->count();
        // dd($fabulous_num);
        $res = DB::table('cms_celebrity')
               	->Where('deleted', 0)
                ->where('id', $params['id'])
                ->first();
        $res->isFabulous = $fabulous;
        $res->fabulous_num = $fabulous_num;
        $res->isCollection = $collection;
        $res->collection_num = $collection_num;
        return returnArr($res);
	}
	
	public function addBrowseNumCelebrity($request)
    {
        $params = $request->all();
        if (isset($params['id'])) {
            $res = DB::table('cms_celebrity')->where('id', $params['id'])->increment('browse_num');
            return returnArr($res);
        }
    }
}