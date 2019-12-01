<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;
 
class AncestralRepository extends Repository
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
		return 'App\\Models\\Ancestral';
	}

	public function addAncestral($request)
	{
		$params = $request->all();
		$params['genealogy'] = isset($params['genealogy']) ? $params['genealogy'] : '';
		if (!isset($params['name'])) {
			return returnArr(false, 20001, '族谱名称必填！');
		}
		
		if (!isset($params['administrators']) || trim($params['administrators']) === "") {
			return returnArr(false, 20002, '管理员不能为空！');
		}

		if (!isset($params['banners']) || trim($params['banners']) === "") {
			return returnArr(false, 20003, '轮播图不能为空！');
		}

		if (!isset($params['describe']) || trim($params['describe']) === "") {
			return returnArr(false, 20004, '描述必填！');
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

	public function getAncestral($request)
	{
		$params = $request->all();
		$pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
		$name = isset($params['name']) ? $params['name'] : '';
		$paginate = DB::table('cms_ancestral_hall as a')
                    ->leftJoin('cms_customer as c', function ($join) {
                        $join->on('a.created_user', '=', 'c.id');
					})->Where('a.name', 'like', "%{$name}%")
					->Where('a.deleted', 0)
					->orderBy('a.created_at', 'desc')
					->select(
						'a.*',
						'c.username as created_user_name'
					)
					->paginate($pageSize);
		$arr = collection($paginate);
		foreach($arr['data'] as $key => $val) {
			$val->admin = DB::table('cms_user')->whereIn('id', explode(',', $val->administrators))->get();
			$val->genealogys = DB::table('cms_surname')->whereIn('id', explode(',', $val->genealogy))->get();
		}
		return returnArr($arr);
	}

	public function getAncestralById($request) 
	{
		$params = $request->all();
		if (!isset($params['id'])) {
			return returnArr(false, 20001, '缺少ID参数！');
		}
		$res = $this->findBy('id', $params['id']);
		return returnArr($res);
	}

	public function delAncestral($request)
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
}