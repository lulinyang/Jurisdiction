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
        $username = isset($data['username']) ? $data['username'] : '';
        $area_surname = isset($data['area_surname']) ? $data['area_surname'] : '';
        $paginate = DB::table('cms_surname')
                    ->Where('deleted', 0)
                    ->Where('username', 'like', "%{$username}%")
                    ->Where('area_surname', 'like', "%{$area_surname}%")
                    ->orderBy('created_at', 'desc')
                    ->paginate(8);

        return collection($paginate);
    }

    public function addGenealogy($request)
    {
        $params = $request->all();
        if (!isset($params['id'])) {
            $user = \Auth::guard('customer')->user();
            $params['user_id'] = $user->id;
            $params['orgcode'] = $user->orgcode;
            $params['orgname'] = $user->orgname;
            $params['username'] = $user->username;
            $res = $this->model->create($params);

            return $this->respondWith(['created' => (bool) $res, 'surname' => $res]);
        } else {
            $arr = [
                'area_surname' => $params['area_surname'],
                'thumbnail' => $params['thumbnail'],
                'describe' => $params['describe'],
                'brief_introduction' => $params['brief_introduction'],
            ];
            $res = $this->update($arr, $params['id']);

            return $this->respondWith(['updated' => (bool) $res, 'surname' => $res]);
        }
    }

    public function getGenealogy($request)
    {
        $params = $request->all();
        $result = $this->getById($params['id']);

        return collection(['code' => '200', 'result' => $result]);
    }

    public function deleteGenealogy($request)
    {
        $params = $request->all();
        $result = $this->update(['deleted' => 1], $params['id']);

        return collection(['code' => '200', 'result' => $result]);
    }
}
