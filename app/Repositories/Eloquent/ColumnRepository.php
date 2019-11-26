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
                    // ->orderBy('created_at', 'desc')
                    ->paginate(15);

        return collection(returnArr($paginate));
    }

    public function addColumn($request)
    {
        $data = $request->all();
        if (!isset($data['name'])) {
            return returnArr(false, 20001, '分类名必填！');
        }
        $data['create_user'] = \Auth::guard('customer')->user()->username;
        if (!isset($data['id'])) {
            try {
                $res = $this->create($data);

                return returnArr($res);
            } catch (\Exception $e) {
                return returnArr(false, 20002, '栏目名重复！');
            }
        } else {
            try {
                $arr = [
                    'name' => $data['name'],
                    'update_user' => $data['create_user'],
                ];
                $res = $this->update($arr, $data['id']);

                return returnArr($res);
            } catch (\Exception $e) {
                return returnArr(false, 20002, '栏目名重复！');
            }
        }
    }

    public function delColumn($request)
    {
        $id = $request->all()['id'];
        if (!$id) {
            return returnArr(false, 20001, '缺少参数id！');
        }
        $res = $this->delete($id);
        if ($res) {
            return returnArr($res);
        }

        return returnArr(false, 20002, '删除成功！');
    }
}
