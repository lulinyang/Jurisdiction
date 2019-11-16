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
		// dd($params);
	}

	public function getComment($request)
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

		$res = DB::table('cms_comment as c')
			->leftjoin('cms_user as u', function ($join) {
				$join->on('c.uid', '=', 'u.id');
			})
			->where('c.uid', $params['uid'])
			->where('c.type', $params['type'])
			->where('c.theme_id', $params['theme_id'])
			->where('c.deleted', 0)
			->where('u.deleted', 0)
			->orderBy('created_at', 'desc')
			->select('c.*', 'u.name', 'u.username', 'u.headUrl', 'u.sex')
			->get()->map(function ($value) {
				return (array) $value;
			}
			)->toArray();
		$data = $this->getTree($res);
		return returnArr($data);
	}

	private function getTree($data, $pid = 0)
    {
        $tree = array();
        foreach ($data as $k => $v) {
            //父亲找到儿子
            if ($v['pid'] == $pid) {
                $v['children'] = $this->getTree($data, $v['id']);
                $tree[] = $v;
                //unset($data[$k]);
            }
        }

        return $tree;
    }
}