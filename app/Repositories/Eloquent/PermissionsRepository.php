<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;

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
        $data = getTree($this->all());

        return collection($data);
    }

    public function addNode($request)
    {
        $data = $request->all();
        $pidLevel = explode('-', $data['pidLevel']);
        $data['pid'] = $pidLevel[0];
        $data['level'] = $pidLevel[1];
        if (!isset($data['id'])) {
            $res = $this->model->create($data);

            return $this->respondWith(['created' => (bool) $res, 'role' => $res]);
        } else {
            $arr = [
                'name' => $data['name'],
                'router' => $data['router'],
                'pid' => $data['pid'],
                'level' => $data['level'],
                'index' => $data['index'],
                'icon' => $data['icon'],
            ];

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
}
