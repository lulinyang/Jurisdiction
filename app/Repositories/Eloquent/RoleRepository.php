<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;

class RoleRepository extends Repository
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
        return 'App\\Models\\Role';
    }

    public function getRoles($request)
    {
        $data = $request->all();
        $pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
        $name = isset($data['name']) ? $data['name'] : '';
        $paginate = $this->model->where('name', 'like', "%{$name}%")
                ->paginate($pageSize);

        return collection(returnArr($paginate));
    }

    public function getRolesAll($request)
    {
        return collection(returnArr($this->all()));
    }

    public function addRole($request)
    {
        $data = $request->all();
        $name = isset($data['name']) ? $data['name'] : '';
        $res = $this->findBy('name', $name);

        if (!isset($data['id'])) {
            if ($res) {
                return returnArr(false, 20001, '角色名重复');
            }
            $res = $this->model->create($data);
            if ($res) {
                return returnArr($res, 200, '创建成功！');
            } else {
                return returnArr(false, 20002, '创建失败！');
            }
        } else {
            if ($res && $res['id'] != $data['id']) {
                return returnArr(false, 20001, '角色名重复');
            }
            $arr = [
                'name' => $data['name'],
                'description' => $data['description'],
            ];
            $res = $this->update($arr, $data['id']);
            if ($res) {
                return returnArr($res, 200, '更新成功！');
            } else {
                return returnArr(false, 20002, '更新失败！');
            }
        }
    }

    public function updateRolePower($request)
    {
        $data = $request->all();
        $arr = [
            'permission_id' => $data['permission_id'],
        ];

        $res = $this->update($arr, $data['id']);

        if ($res) {
            return returnArr($res, 200, '更新成功！');
        } else {
            return returnArr(false, 20002, '更新失败！');
        }
    }

    public function deleteRole($request)
    {
        $data = $request->all();
        $res = $this->delete($data['id']);
        if ($res) {
            return returnArr($res, 200, '删除成功！');
        } else {
            return returnArr(false, 20002, '删除失败！');
        }
    }
}
