<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class SurnameRepository extends Repository
{
    public function __construct(Client $http, App $app)
    {
        parent::__construct($app);
        $this->http = $http;
    }

    /**
     * Specify Model class name.
     *
     * @return string
     */
    public function model()
    {
        return 'App\\Models\\Surname';
    }

    public function getGenealogyList($request)
    {
        $data = $request->all();
        $pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
        $username = isset($data['username']) ? $data['username'] : '';
        $area_surname = isset($data['area_surname']) ? $data['area_surname'] : '';
        $describe = isset($data['describe']) ? $data['describe'] : '';
        $paginate = DB::table('cms_surname')
                    ->Where('deleted', 0)
                    ->Where('username', 'like', "%{$username}%")
                    ->Where('area_surname', 'like', "%{$area_surname}%")
                    ->Where('describe', 'like', "%{$describe}%")
                    ->orderBy('created_at', 'desc')
                    ->paginate($pageSize);

        return returnArr(collection($paginate));
    }

    public function addGenealogy($request)
    {
        $params = $request->all();
        // dd($params);administrators
        if(!isset($params['administrators'])) {
            return returnArr(false, 20001, '管理员必填！');
        }
        
        if (!isset($params['id'])) {
            $user = \Auth::guard('customer')->user();
            $params['user_id'] = $user->id;
            $params['orgcode'] = $user->orgcode;
            $params['orgname'] = $user->orgname;
            $params['username'] = $user->username;
            $res = $this->model->create($params);
            foreach($params['administrators'] as $key => $val) {
                $data = [
                    'surname_id' => $res->id,
                    'uid' => $val,
                    'isApply' => 1,
                    'identity' => 1,
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s'),
                ];
                DB::table('cms_surname_user')->insert($data);
            }
            if ($res) {
                return returnArr($res, 200, '创建成功！');
            } else {
                return returnArr(false, 20002, '创建失败！');
            }
        } else {
            DB::table('cms_surname_user')->where(['surname_id' => $params['id'], 'identity' => 1])->delete();
            foreach($params['administrators'] as $key => $val) {
                $data = [
                    'surname_id' => $params['id'],
                    'uid' => $val,
                    'isApply' => 1,
                    'identity' => 1,
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s'),
                ];
                DB::table('cms_surname_user')->insert($data);
            }
            $arr = [
                'area_surname' => $params['area_surname'],
                'thumbnail' => $params['thumbnail'],
                'describe' => $params['describe'],
                'brief_introduction' => $params['brief_introduction'],
            ];
            $res = $this->update($arr, $params['id']);

            if ($res) {
                return returnArr($res, 200, '修改成功！');
            } else {
                return returnArr(false, 20002, '修改失败！');
            }
        }
    }

    public function getGenealogy($request)
    {
        $params = $request->all();
        if(!isset($params['id'])) {
            return returnArr(false, 20001, '缺少ID参数！');
        }
        //是否点赞/收藏
        $fabulous = false;
        $collection = false;
        if (isset($params['uid'])) {
            $result = DB::table('cms_fabulous')
                ->where([
                    'type' => 2,
                    'uid' => $params['uid'],
                    'theme_id' => $params['id']
                ])->first();

            $result2 = DB::table('cms_collection')
                ->where([
                    'type' => 2,
                    'uid' => $params['uid'],
                    'theme_id' => $params['id']
                ])->first(); 
            $fabulous = $result ? true : false;
            $collection = $result2 ? true : false;
        }
        //点赞总数
        $fabulous_num = DB::table('cms_fabulous')
            ->where([
                'type' => 2,
                'theme_id' => $params['id']
            ])->count();
        //收藏总数
        $collection_num  = DB::table('cms_collection')
            ->where([
                'type' => 2,
                'theme_id' => $params['id']
            ])->count();
        //评论总数
        $comment_num  = DB::table('cms_comment')
            ->where([
                'type' => 2,
                'theme_id' => $params['id']
            ])->count();
        //管理员
        $administrators = DB::table('cms_surname_user')
            ->where([
                'identity' => 1,
                'surname_id' => $params['id']
            ])->get();
        $admin_ids = [];
        foreach($administrators as $key => $val) {
            $admin_ids[] = strval($val->uid);
        }
        //所有成员
        $members = DB::table('cms_surname_user')
            ->where([
                'isApply' => 1,
                'surname_id' => $params['id']
            ])->get();
        $member_ids = [];
        foreach($members as $key => $val) {
            $member_ids[] = strval($val->uid);
        }
        $result = $this->getById($params['id']);
        $result->isFabulous = $fabulous;
        $result->fabulous_num = $fabulous_num;
        $result->isCollection = $collection;
        $result->collection_num = $collection_num;
        $result->comment_num = $comment_num;
        $result->administrators = $admin_ids;
        $result->members = $member_ids;
        return returnArr($result);
    }

    public function deleteGenealogy($request)
    {
        $params = $request->all();
        $res = $this->update(['deleted' => 1], $params['id']);
        if ($res) {
            return returnArr($res, 200, '删除成功！');
        } else {
            return returnArr(false, 20002, '删除失败！！');
        }
    }
    
    public function addBrowseNum($request)
    {
        $params = $request->all();
        if (isset($params['id'])) {
            $res = DB::table('cms_surname')->where('id', $params['id'])->increment('browse_volume');
            return returnArr($res);
        }
    }

    public function getSurnameAll($request)
    {
        $params = $request->all();
        $area_surname = isset($params['area_surname']) ? $params['area_surname'] : '';
        $res = DB::table('cms_surname')
                    ->Where('area_surname', 'like', "%{$area_surname}%")
                    ->Where('deleted', '0')
                    ->get();
        return returnArr($res);
    }

    public function applySurname($request)
    {
        $params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
        }
        
        if (!isset($params['surname_id'])) {
			return returnArr(false, 20001, '缺少surname_id参数！');
        }
        
        $surname = DB::table('cms_surname_user')
            ->Where([
                'uid' => $params['uid'],
                'surname_id' => $params['surname_id'],
                'deleted' => 0
            ])
            ->first();

        if($surname) {
            return returnArr(true, 2000, '已提交申请，请耐心等候！');
        }

        $data = [
            'surname_id' => $params['surname_id'],
            'uid' => $params['uid'],
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];
        $res = DB::table('cms_surname_user')->insert($data);
        if($res) {
            return returnArr($res, 2000, '已提交申请，请耐心等候！');
        }
        return returnArr($res, 20002, '申请失败，请稍后再试！');
    }
    
}
