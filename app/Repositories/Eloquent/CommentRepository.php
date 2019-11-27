<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;


class CommentRepository extends Repository
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
		return 'App\\Models\\Comment';
	 }

	 public function saveComment($request)
	 {
		$params = $request->all();
		if(!isset($params['uid'])) {
			return returnArr(false, 20001, '缺少uid参数！');
		}

		if (!isset($params['type'])) {
            return returnArr(false, 20002, '缺少type参数！');
		}
		
		if (!isset($params['theme_id'])) {
            return returnArr(false, 20003, '缺少theme_id参数！');
		}
		
		if (!isset($params['content'])) {
            return returnArr(false, 20003, '评论内容不能为空！');
		}
		
		$res = $this->create($params);
		if($res) {
			return returnArr($res, 200, '评论成功！');
		}
		return returnArr($res, 20004, '评论失败！');
	}

	public function getComment($request)
	{
		$params = $request->all();
		if(!isset($params['uid'])) {
			return returnArr(false, 20001, '你还没登录！');
		}

		if (!isset($params['type'])) {
            return returnArr(false, 20002, '缺少type参数！');
		}
		
		if (!isset($params['theme_id'])) {
            return returnArr(false, 20003, '缺少theme_id参数！');
		}

		if (!isset($params['pid'])) {
            $params['pid'] = 0;
		}
		if($params['pid'] > 0) {
			$pid = DB::table('cms_comment')
			->where('id', $params['pid'])
			->select('pid')
			->first()->pid;
		}else {
			$pid = 0;
		}
		
		$idArray = DB::table('cms_comment')
			->where('pid', $params['pid'])
			->select('id')
			->get();
		
		//每次查询所需要的pid
		$ids = [$params['pid']*1];
		if($idArray) {
			foreach($idArray as $key => $val) {
				$ids[] = $val->id;
			}
		}
		$res = DB::table('cms_comment as c')
			->leftjoin('cms_user as u', function ($join) {
				$join->on('c.uid', '=', 'u.id');
			})
			->where('c.uid', $params['uid'])
			->where('c.type', $params['type'])
			->where('c.theme_id', $params['theme_id'])
			->where('c.deleted', 0)
			->where('u.deleted', 0)
			->where(function ($query) use ($ids, $params) {
                $query->whereIn('c.pid', $ids)
                      ->orWhere('c.id', $params['pid']);
            })
			->orderBy('created_at', 'desc')
			->select(
				'c.*', 
				'u.name', 
				'u.username', 
				'u.headUrl', 
				'u.sex', 
				DB::raw("(SELECT COUNT(id) FROM cms_fabulous WHERE type = 4 AND theme_id = c.id) as fabulous_num"))
			->get()
			->map(function ($value) {
				return (array) $value;
			}
			)->toArray();
		$data = $this->getTree($res, $pid, $params);
		return returnArr($data);
	}

	private function getTree($data, $pid = 0, $params)
    {
        $tree = array();
        foreach ($data as $k => $v) {
            if ($v['pid'] == $pid) {
				if(isset($params['uid'])) {
					$fa = DB::table('cms_fabulous')->where([
						'uid' => $params['uid'],
						'type' => 4,
						'theme_id' => $v['id']
					])->first();
					if($fa) {
						$v['isFabulous'] = true;
					}else {
						$v['isFabulous'] = false;
					}
				}else {
					$v['isFabulous'] = false;
				}
                $v['children'] = $this->getTree($data, $v['id'], $params);
                $tree[] = $v;
            }
        }

        return $tree;
    }
}