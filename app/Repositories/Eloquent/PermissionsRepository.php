<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class PermissionsRepository extends Repository
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
        return 'App\\Models\\Permissions';
    }

    public function getNodes($request)
    {
        $data = $request->all();
        $name = isset($data['name']) ? $data['name'] : '';
        $paginate = $this->model->where('name', 'like', "%{$name}%")
                    ->paginate($request->pageSize);

        return collection($paginate);
    }

    public function getNodesAll($request)
    {
        $data = cateSort($this->all());

        return collection($data);
    }

    public function getNodesGetTree($request)
    {
        $perms = DB::table('cms_permissions')
                ->orderBy('top', 'desc')
                ->orderBy('sort', 'desc')
                ->get()
                ->map(function ($value) {
                    return (array) $value;
                }
                )->toArray();
        $data = $this->getTree($perms);

        return collection($data);
    }

    public function addNode($request)
    {
        $data = $request->all();
        $isTop = isset($data['isTop']) ? $data['isTop'] : false;
        if (!$isTop) {
            $pidLevel = explode('-', $data['pidLevel']);
            $data['pid'] = $pidLevel[0];
            $data['level'] = $pidLevel[1];
        }
        if (!isset($data['id'])) {
            $res = $this->model->create($data);

            return $this->respondWith(['created' => (bool) $res, 'role' => $res]);
        } else {
            if (!$isTop) {
                $arr = [
                    'name' => $data['name'],
                    'router' => $data['router'],
                    'pid' => $data['pid'],
                    'level' => $data['level'],
                    'index' => $data['index'],
                    'icon' => $data['icon'],
                    'sort' => $data['sort'],
                ];
            } else {
                $arr = [
                    'top' => $data['top'],
                ];
            }
            $res = $this->update($arr, $data['id']);

            return $this->respondWith(['updated' => (bool) $res, 'role' => $res]);
        }
    }

    public function deleteNode($request)
    {
        $data = $request->all();
        $id = $data['id'];
        $res = $this->findBy('pid', $id);
        if ($res) {
            return $this->respondWith(['result' => false, 'message' => '还有子节点，不能删除！']);
        }

        $res = $this->delete($id);
        $msg = $res ? '删除成功！' : '还有子节点，不能删除！';

        return collection(['result' => (bool) $res, 'message' => $msg]);
    }

    private function getTree($data, $pid = 0)
    {
        $tree = array();
        foreach ($data as $k => $v) {
            //父亲找到儿子
            if ($v['pid'] == $pid) {
                $v['top'] = $v['top'] ? true : false;
                $v['children'] = $this->getTree($data, $v['id']);
                $tree[] = $v;
                //unset($data[$k]);
            }
        }

        return $tree;
    }
}
