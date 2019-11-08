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

        return collection(returnArr($paginate));
    }

    public function getNodesAll($request)
    {
        $data = cateSort($this->all());

        return collection(returnArr($data));
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

        return collection(returnArr($data));
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
            if ($res) {
                return returnArr($res, 200, '创建成功！');
            } else {
                return returnArr(false, 20001, '创建失败！');
            }
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

            if ($res) {
                return returnArr($res, 200, '修改成功！');
            } else {
                return returnArr(false, 20001, '修改失败！');
            }
        }
    }

    public function deleteNode($request)
    {
        $data = $request->all();
        $id = $data['id'];
        $res = $this->findBy('pid', $id);
        if ($res) {
            return returnArr(false, 20003, '还有子节点，不能删除！');
        }

        $res = $this->delete($id);
        if ($res) {
            return returnArr($res, 200, '删除成功！');
        } else {
            return returnArr(false, 20001, '删除失败！！');
        }
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
