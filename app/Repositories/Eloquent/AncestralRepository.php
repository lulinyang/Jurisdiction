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

	public function getAncestralApp($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}
		$ids = $this->getAlreadyAncestralId($params['uid']);
		$pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
		$paginate = DB::table('cms_ancestral_hall')
			->whereNotIn('id', $ids)
			->where('deleted', 0)
			->orderBy('created_at', 'desc')
			->paginate($pageSize);
		$arr = collection($paginate);
		foreach($arr['data'] as $key => $val) {
			$where = [
				'ancetral_id' => $val->id,
				'isApply' => 1,
				'deleted' => 0
			];
			$admins = explode(",", $val->administrators);
			$val->member_num = DB::table('cms_apply_ancestral')->where($where)->count() + count($admins);
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

	public function applyAncestral($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['ancetral_id'])) {
			return returnArr(false, 20001, '缺少ancetral_id参数！');
		}

		if (!isset($params['admin_ids'])) {
			return returnArr(true, 20002, '缺少admin_ids参数！');
		}
		
		$admins = explode(",", $params['admin_ids']);
		if(in_array($params['uid'], $admins)) {
			return returnArr(false, 20005, '您已经是管理管！');
		}

		$where = [
			'uid' => $params['uid'],
			'ancetral_id' => $params['ancetral_id'],
			'deleted' => 0
		];
		$apply = DB::table('cms_apply_ancestral')->where($where)->first();

		if($apply) {
			return returnArr(false, 200, '已提交申请，请耐心等候！');
		}
		$params['remark'] = isset($params['remark']) ? $params['remark'] : '';
		$arr = [
			'uid' => $params['uid'],
			'ancetral_id' => $params['ancetral_id'],
			'remark' => $params['remark'],
			'admin_ids' => $params['admin_ids'],
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s'),
		];
		
		
		$res = DB::table('cms_apply_ancestral')->insert($arr);
		if($res) {
			return returnArr($res, 200, '申请成功，等待管理员审核！');
		}
		return returnArr(false, 20003, '申请失败！');
	}

	public function cancelAncestral($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['ancetral_id'])) {
			return returnArr(false, 20001, '缺少ancetral_id参数！');
		}

		$where = [
			'uid' => $params['uid'],
			'ancetral_id' => $params['ancetral_id']
		];
		$res = DB::table('cms_apply_ancestral')->where($where)->update(['deleted' => 1]);
		if($res) {
			return returnArr($res, 200, '取消成功！');
		}
		return returnArr(false, 20003, '取消失败！');
	}

	public function getAlreadyAncestral($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}
		
		//先得到管理员所在宗祠
		$sql = 'SELECT * FROM `cms_ancestral_hall` WHERE FIND_IN_SET(?,administrators) AND deleted = 0';
		$ancestral_admin = DB::select($sql, [$params['uid']]);
		// dd($ancestral_admin);
		//先得到普通成员所在宗祠
		$ancestral_member = DB::table('cms_apply_ancestral as ap')
			->leftJoin('cms_ancestral_hall as a', function ($join) {
				$join->on('a.id', '=', 'ap.ancetral_id');
			})
			->where('ap.deleted', 0)
			->where('a.deleted', 0)
			->where('isApply', 1)
			->where('ap.uid', $params['uid'])
			->select('a.*')
			->get()->toArray();
		
		$res = array_merge($ancestral_admin, $ancestral_member);
		foreach($res as $key => $val) {
			$where = [
				'ancetral_id' => $val->id,
				'isApply' => 1,
				'deleted' => 0
			];
			$admins = explode(",", $val->administrators);
			$val->member_num = DB::table('cms_apply_ancestral')->where($where)->count() + count($admins);
			$val->admin = DB::table('cms_user')->whereIn('id', explode(',', $val->administrators))->get();
			$val->genealogys = DB::table('cms_surname')->whereIn('id', explode(',', $val->genealogy))->get();
		}

		return returnArr($res);
	}

	public function getApplyAncestral($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		//先得到普通成员所在宗祠
		$res = DB::table('cms_apply_ancestral as ap')
			->leftJoin('cms_ancestral_hall as a', function ($join) {
				$join->on('a.id', '=', 'ap.ancetral_id');
			})
			->where('ap.deleted', 0)
			->where('a.deleted', 0)
			->where('isApply', 0)
			->where('ap.uid', $params['uid'])
			->get()->toArray();
		foreach($res as $key => $val) {
			$where = [
				'ancetral_id' => $val->id,
				'isApply' => 1,
				'deleted' => 0
			];
			$admins = explode(",", $val->administrators);
			$val->member_num = DB::table('cms_apply_ancestral')->where($where)->count() + count($admins);
			$val->admin = DB::table('cms_user')->whereIn('id', explode(',', $val->administrators))->get();
			$val->genealogys = DB::table('cms_surname')->whereIn('id', explode(',', $val->genealogy))->get();
		}
		return returnArr($res);
	}

	public function getAncestralInfo($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['id'])) {
			return returnArr(false, 20001, '缺少id参数！');
		}
		$where = [
			'id' => $params['id'],
			'deleted' => 0
		];
		$ancestral = DB::table('cms_ancestral_hall')->where($where)->first();
		$admins = explode(",", $ancestral->administrators);
		$member_admin = DB::table('cms_user')->where('deleted', 0)->whereIn('id', $admins)->get()->toArray();
		foreach($member_admin as $key => $val) {
			$val->role = 1;
		}

		$where = [
			'u.deleted' => 0,
			'a.deleted' => 0,
			'a.isApply' => 1,
			'a.ancetral_id' => $params['id']
		];
		$member_state = $res = DB::table('cms_apply_ancestral as a')
			->leftJoin('cms_user as u', function ($join) {
				$join->on('a.uid', '=', 'u.id');
			})
			->where($where)
			->select('u.*')
			->get()
			->toArray();
		foreach($member_state as $key => $val) {
			$val->role = 0;
		}

		$ancestral->members = array_merge($member_admin, $member_state);
		$genealogyIds = explode(",", $ancestral->genealogy);
		$ancestral->genealogys = DB::table('cms_surname')->where('deleted', 0)->whereIn('id', $genealogyIds)->get()->toArray();
		return returnArr($ancestral);
		// dd($ancestral);
	}

	private function getAlreadyAncestralId($uid)
	{
		//先得到管理员所在宗祠
		$sql = 'SELECT id FROM `cms_ancestral_hall` WHERE FIND_IN_SET(?,administrators) AND deleted = 0';
		$ancestral_admin = DB::select($sql, [$uid]);
		//先得到普通成员所在宗祠
		$ancestral_member = DB::table('cms_apply_ancestral as ap')
		->leftJoin('cms_ancestral_hall as a', function ($join) {
			$join->on('a.id', '=', 'ap.ancetral_id');
		})
		->where('ap.deleted', 0)
		->where('a.deleted', 0)
		->where('ap.uid', $uid)
		->where('ap.isApply', 1)
		->get(['a.id'])->toArray();
		$ids = [];
		$res = array_merge($ancestral_admin, $ancestral_member);
		foreach($res as $key => $val) {
			$ids[] = $val->id;
		}

		return $ids;
	}
	
	
}