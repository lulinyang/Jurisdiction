<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class ColumnRepository extends Repository
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
        return 'App\\Models\\Column';
    }

    public function getColumnList($request)
    {
        $data = $request->all();
        $name = isset($data['name']) ? $data['name'] : '';
        $paginate = DB::table('cms_column')
                    ->Where('name', 'like', "%{$name}%")
                    ->orderBy('created_at', 'desc')
                    ->paginate(8);

        return collection($paginate);
    }

    public function addColumn($request)
    {
        $data = $request->all();
        if (!isset($data['name'])) {
            return $this->respondWith(['created' => false, 'updated' => false, 'message' => '分类名必填！']);
        }
        $data['create_user'] = \Auth::guard('customer')->user()->username;
        if (!isset($data['id'])) {
            try {
                $res = $this->create($data);
            } catch (\Exception $e) {
                return $this->respondWith(['created' => false, 'message' => '栏目名重复！']);
            }

            return $this->respondWith(['created' => (bool) $res, 'column' => $res]);
        } else {
            try {
                $arr = [
                    'name' => $data['name'],
                    'update_user' => $data['create_user'],
                ];
                $res = $this->update($arr, $data['id']);
            } catch (\Exception $e) {
                return $this->respondWith(['updated' => false, 'message' => '栏目名重复！']);
            }

            return $this->respondWith(['updated' => (bool) $res, 'column' => $res]);
        }
    }

    public function delColumn($request)
    {
        $id = $request->all()['id'];

        $res = $this->delete($id);

        return collection(['result' => (bool) $res, 'message' => '删除成功！']);
    }
}
