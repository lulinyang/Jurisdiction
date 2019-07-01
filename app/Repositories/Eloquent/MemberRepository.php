<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class MemberRepository extends Repository
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
        return 'App\\Models\\Member';
    }

    public function getMemberList($request)
    {
        $data = $request->all();
        $name = isset($data['name']) ? $data['name'] : '';
        $paginate = DB::table('cms_member')
                    ->Where('deleted', 0)
                    ->Where('name', 'like', "%{$name}%")
                    ->orderBy('created_at', 'desc')
                    ->paginate(8);

        return collection($paginate);
    }

    public function addMember($request)
    {
        $params = $request->all();
        if (!isset($params['id'])) {
            $user = \Auth::guard('customer')->user();
            $params['create_user'] = $user->username;
            if (isset($params['areas'])) {
                $params['province'] = $params['areas'][0];
                $params['city'] = $params['areas'][1];
                $params['area'] = $params['areas'][2];
            }
            $res = $this->model->create($params);

            return $this->respondWith(['created' => (bool) $res, 'member' => $res]);
        } else {
            $arr = [
                'name' => $params['name'],
                'headUrl' => $params['headUrl'],
                'tel' => $params['tel'],
                'brief_introduction' => $params['brief_introduction'],
                'province' => $params['areas'][0],
                'city' => $params['areas'][1],
                'area' => $params['areas'][2],
                'address' => $params['address'],
                'sex' => $params['sex'],
                'isdead' => $params['isdead'],
            ];
            $res = $this->update($arr, $params['id']);

            return $this->respondWith(['updated' => (bool) $res, 'member' => $res]);
        }
    }

    public function getMember($request)
    {
        $params = $request->all();
        $result = DB::table('cms_member')->where(['deleted' => 0, 'id' => $params['id']])->first();
        $result->areas = [
            $result->province,
            $result->city,
            $result->area,
        ];

        return collection(['code' => '200', 'result' => $result]);
    }

    public function deleteMember($request)
    {
        $params = $request->all();
        $result = $this->update(['deleted' => 1], $params['id']);

        return collection(['code' => '200', 'result' => $result]);
    }

    public function getMemberAll($request)
    {
        $result = DB::table('cms_member')->where('deleted', 0)->get();

        return collection($result);
    }
}
