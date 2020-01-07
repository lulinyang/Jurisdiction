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
	
	public function getAncestralAll($request)
	{
		$res = DB::table('cms_ancestral_hall')->where('deleted', 0)->select('id', 'name')->get();
		return returnArr($res);
	}

	public function addNotice($request)
	{
		$params = $request->all();
		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20001, '缺少ancestral_id！');
		}

		if (!isset($params['content'])) {
			return returnArr(false, 20001, '公告内容必填！');
		}
		$userId = \Auth::guard('customer')->user()->id;
		$arr = [
			'ancestral_id' => $params['ancestral_id'],
			'content' => $params['content'],
			'create_user' => $userId,
			'created_at' => date('Y-m-d H:i:s')
		];
		$res = DB::table('cms_notice')->insert($arr);
		if($res) {
			return returnArr($res, 200, '添加成功！');
		}
		return returnArr($res, 200, '添加失败！');
	}

	public function getNoticeList($request)
	{
		$params = $request->all();
		$pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
		$ancestral_id = isset($params['ancestral_id']) ? $params['ancestral_id'] : '0';
		$content = isset($params['content']) ? $params['content'] : '';
		$flied = 'n.ancestral_id';
		if($ancestral_id === '0') {
			$flied = 'n.deleted';
		}
		$paginate = DB::table('cms_notice as n')
			->leftJoin('cms_ancestral_hall as a', function ($join) {
				$join->on('n.ancestral_id', '=', 'a.id');
			})
			->leftJoin('cms_customer as c', function ($join) {
				$join->on('n.create_user', '=', 'c.id');
			})
			->Where('n.deleted', 0)
			->where($flied, $ancestral_id)
			->where('n.content', 'like', "%{$content}%")
			->orderBy('n.created_at', 'desc')
			->select(
				'n.*',
				'c.username as created_user_name',
				'a.name as ancestral_name'
			)
			->paginate($pageSize);
		return returnArr(collection($paginate));
	}

	public function editNotice($request) 
	{
		$params = $request->all();
		if (!isset($params['id'])) {
			return returnArr(false, 20001, '缺少id！');
		}

		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20002, '缺少ancestral_id！');
		}

		if (!isset($params['content'])) {
			return returnArr(false, 20003, '公告内容必填！');
		}
		$userId = \Auth::guard('customer')->user()->id;
		$arr = [
			'ancestral_id' => $params['ancestral_id'],
			'content' => $params['content'],
			'update_user' => $userId,
			'updated_at' => date('Y-m-d H:i:s')
		];
		$res = DB::table('cms_notice')->where('id', $params['id'])->update($arr);
		if($res) {
			return returnArr($res, 200, '编辑成功！');
		}
		return returnArr($res, 20004, '编辑失败！');
	}
	
	public function delNotice($request) 
	{
		$params = $request->all();
		if (!isset($params['id'])) {
			return returnArr(false, 20001, '缺少id！');
		}
		$userId = \Auth::guard('customer')->user()->id;
		$arr = [
			'deleted' => 1, 
			'updated_at' => date('Y-m-d H:i:s'),
			'update_user' => $userId
		];
		$res = DB::table('cms_notice')->where('id', $params['id'])->update($arr);
		if($res) {
			return returnArr($res, 200, '删除成功！');
		}
		return returnArr($res, 20002, '删除失败！');
	}

	public function addVote($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20001, '缺少ancestral_id！');
		}
		
		if (!isset($params['title'])) {
			return returnArr(false, 20001, '投票描述不能为空！');
		}

		if (!isset($params['contents'])) {
			return returnArr(false, 20002, '投票对象不能为空！');
		}
		$arr = [
			'ancestral_id' => $params['ancestral_id'],
			'title' => $params['title'],
			'created_at' => date('Y-m-d H:i:s'),
			'uid' => $params['uid']
		];
		try {
			DB::beginTransaction();
			$id = DB::table('cms_vote_title')->insertGetId($arr);
			foreach($params['contents'] as $key => $val) {
				$params['contents'][$key]['vote_id'] = $id;
				$params['contents'][$key]['created_at'] = date('Y-m-d H:i:s');
			}
			// dd($params['contents']);
			$res = DB::table('cms_vote_content')->insert($params['contents']);
			if($res) {
				DB::commit();
				return returnArr($res, 200, '发布成功！');
			}
			DB::rollBack();
			return returnArr(false, 20002, '发布失败！');
		} catch (\Throwable $th) {
			DB::rollBack();
			return returnArr(false, 20002, '发布失败！');
		}
	}

	public function getVoteList($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20001, '缺少ancestral_id！');
		}

		$pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
		$paginate = DB::table('cms_vote_title')->where('deleted', 0)
			->select(
				'*',
				DB::raw("(SELECT name FROM cms_ancestral_hall WHERE id = ancestral_id) as ancestral_name"),
				DB::raw("(SELECT name FROM cms_user WHERE id = uid) as username"),
				DB::raw("(SELECT headUrl FROM cms_user WHERE id = uid) as headUrl")
			)
			->paginate($pageSize);
			
		return returnArr(collection($paginate));
	}

	public function getVoteItem($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['id'])) {
			return returnArr(false, 20001, '缺少ID参数！');
		}
		$res = DB::table('cms_vote_title')->where(['deleted'=>0, 'id' => $params['id']])->first();
		$res->vote_content = DB::table('cms_vote_content')->where(['deleted'=>0, 'vote_id' => $params['id']])->get();
		$sql_check = "SELECT * from cms_vote_content WHERE vote_id = ? AND FIND_IN_SET(?, user_ids)";
		$item = DB::select($sql_check, [$params['id'], $params['uid']]);
		if($item) {
			$res->isVote = true;
		}else {
			$res->isVote = false;
		}
		return returnArr($res);
	}

	public function activeVoteItem($request)
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}

		if (!isset($params['vote_id'])) {
			return returnArr(false, 20001, '缺少vote_id参数！');
		}
		if (!isset($params['id'])) {
			return returnArr(false, 20002, '缺少id参数！');
		}

		$sql_check = "SELECT * from cms_vote_content WHERE vote_id = ? AND FIND_IN_SET(?, user_ids)";
		$item = DB::select($sql_check, [$params['vote_id'], $params['uid']]);
		if($item) {
			return returnArr(false, 20003, '您已投过票不能重复投票！');
		}
		$voteItem = DB::table('cms_vote_content')->where('id', $params['id'])->first();
		$sql = "UPDATE cms_vote_content SET user_ids=? WHERE id = ?";
		if($voteItem->user_ids) {
			$sql = "UPDATE cms_vote_content SET user_ids=CONCAT(user_ids,',',?) WHERE id = ?";
		}
		$res = DB::update($sql, [$params['uid'], $params['id']]);
		if($res) {
			return returnArr($res, 200, '投票成功！');
		}else {
			return returnArr($res, 20004, '投票失败，请稍后再试！');
		}
	}

	public function getNoticeNew($request) 
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}
	
		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20001, '缺少ancestral_id参数！');
		}
		$where = [
			'deleted' => 0,
			'ancestral_id' => $params['ancestral_id']
		];
		$res = DB::table('cms_notice')->where($where)->orderBy('created_at', 'desc')->first();
		return returnArr($res);
	}

	public function saveProposal($request) 
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}
	
		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20001, '缺少ancestral_id参数！');
		}

		if (!isset($params['content'])) {
			return returnArr(false, 20002, '建议内容必填！');
		}
		$arr = [
			'uid' => $params['uid'],
			'ancestral_id' => $params['ancestral_id'],
			'content' => $params['content'],
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s')
		];
		$res = DB::table('cms_proposal')->insert($arr);
		if($res) {
			return returnArr($res, 200, '发布成功！');
		}
		return returnArr($res, 20003, '发布失败！');
	}

	public function getProposalList($request) 
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}
	
		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20001, '缺少ancestral_id参数！');
		}
		
		$where = [
			'p.deleted' => 0,
			'p.ancestral_id' => $params['ancestral_id']
		];
		$pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
		$type = isset($params['type']) ? $params['type'] : 0;
		if($type != 0) {
			$where['p.uid'] = $params['uid'];
		}
		$paginate = DB::table('cms_proposal as p')
			->leftJoin('cms_user as u', function ($join) {
				$join->on('p.uid', '=', 'u.id');
			})->where($where)
			->orderBy('p.created_at', 'desc')
			->select('p.*', 'u.name', 'u.headUrl')
			->paginate($pageSize);
		return returnArr($paginate);
	}

	public function getAncestralFileList($request) 
	{
		$params = $request->all();
	
		if (!isset($params['ancestral_id'])) {
			return returnArr(false, 20001, '缺少ancestral_id参数！');
		}

		$where = [
			'deleted' => 0,
			'ancestral_id' => $params['ancestral_id']
		];
		$pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
		$paginate = DB::table('cms_upload_file')
			->where($where)
			->orderBy('created_at', 'desc')
			->paginate($pageSize);
		return returnArr($paginate);
	}

	public function getAuditingAncestral($request) 
	{
		$params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
		}
		$sql = "SELECT id from cms_ancestral_hall WHERE deleted = 0 AND FIND_IN_SET(?, administrators)";
		$ancestrals = DB::select($sql, [$params['uid']]);
		$ancetral_ids = [];
		foreach($ancestrals as $key => $val) {
			$ancetral_ids[] = $val->id;
		}
		$res = DB::table('cms_apply_ancestral as a')
			->leftJoin('cms_user as u', function ($join) {
				$join->on('a.uid', '=', 'u.id');
			})
			->leftJoin('cms_ancestral_hall as h', function ($join) {
				$join->on('a.ancetral_id', '=', 'h.id');
			})
			->whereIn('a.ancetral_id', $ancetral_ids)
			->where('a.deleted', 0)
			->where('a.isApply', 0)
			->select('a.*', 'u.name', 'u.username', 'u.sex', 'u.headUrl', 'h.name as ancetral_name')
			->get();
		return returnArr($res);
	}
}