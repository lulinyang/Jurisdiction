<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class ArcticleRepository extends Repository
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
        return 'App\\Models\\Arcticle';
    }

    public function getArcticlList($request)
    {
        $data = $request->all();
        $title = isset($data['title']) ? $data['title'] : '';
        $pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
        $describe = isset($data['describe']) ? $data['describe'] : '';
        $create_user = isset($data['create_user']) ? $data['create_user'] : '';
        if (isset($data['type'])) {
            $filed = 'c.id';
            $type = $data['type'];
        } else {
            $filed = 'c.deleted';
            $type = '0';
        }
        $paginate = DB::table('cms_article as a')
                    ->leftjoin('cms_column as c', function ($join) {
                        $join->on('a.type', '=', 'c.id');
                    })->Where('a.deleted', 0)
                    ->Where('a.title', 'like', "%{$title}%")
                    ->Where('a.describe', 'like', "%{$describe}%")
                    ->Where('a.create_user', 'like', "%{$create_user}%")
                    ->Where($filed, '=', $type)
                    ->orderBy('a.created_at', 'desc')
                    ->select('a.*', 'c.name as typename')
                    ->paginate($pageSize);

        return collection(returnArr($paginate));
    }

    public function addarticle($request)
    {
        $params = $request->all();
        $params['create_user'] = \Auth::guard('customer')->user()->username;
        if (!isset($params['id'])) {
            $res = $this->create($params);
            if ($res) {
                return returnArr($res);
            }

            return returnArr(false, 20001, '创建失败！');
        } else {
            $arr = [
                'title' => $params['title'],
                'thumbnail' => $params['thumbnail'],
                'describe' => $params['describe'],
                'content' => $params['content'],
                'type' => $params['type'],
                'update_user' => $params['create_user'],
            ];
            $res = $this->update($arr, $params['id']);
            if ($res) {
                return returnArr($res);
            }

            return returnArr(false, 20001, '修改失败！');
        }
    }

    public function getArticle($request)
    {
        $params = $request->all();
        $res = $this->getById($params['id']);
        if (!$params['id']) {
            return returnArr(false, 20001, '缺少参数id！');
        }

        if ($res) {
            return returnArr($res);
        }

        return returnArr(false, 20002, '没有文章！');
    }

    public function deleteArcticle($request)
    {
        $params = $request->all();
        if (!$params['id']) {
            return returnArr(false, 20001, '缺少参数id！');
        }
        $res = $this->update(['deleted' => 1], $params['id']);

        if ($res) {
            return returnArr($res);
        }

        return returnArr(false, 20002, '没有文章！');
    }
}
