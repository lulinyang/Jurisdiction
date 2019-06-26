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
        $keyword = isset($data['keyword']) ? $data['keyword'] : '';
        $paginate = $this->model->where(['deleted' => 0])
            ->when($keyword, function ($query) use ($keyword) {
                $query->where(function ($query) use ($keyword) {
                    return $query->orWhere('name', 'like', "%{$keyword}%");
                });
            })->paginate($request->pageSize);

        return collection($paginate);
    }

    public function getRolesAll($request)
    {
        return collection($this->all());
    }

    public function addRole($request)
    {
        $data = $request->all();
        $name = isset($data['name']) ? $data['name'] : '';
        $res = $this->findBy('name', $name);

        if (!isset($data['id'])) {
            if ($res) {
                return $this->respondWith(['find' => (bool) $res, 'role' => $res]);
            }
            $res = $this->model->create($data);

            return $this->respondWith(['created' => (bool) $res, 'role' => $res]);
        } else {
            if ($res && $res['id'] != $data['id']) {
                return $this->respondWith(['find' => (bool) $res, 'role' => $res]);
            }
            $arr = [
                'name' => $data['name'],
            ];
            $res = $this->update($arr, $data['id']);

            return $this->respondWith(['updated' => (bool) $res, 'role' => $res]);
        }
    }

    public function updateRolePower($request)
    {
        $data = $request->all();
        $arr = [
            'permission_id' => $data['permission_id'],
        ];

        $res = $this->update($arr, $data['id']);

        return $this->respondWith(['updated' => (bool) $res, 'role' => $res]);
    }
}
