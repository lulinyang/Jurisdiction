<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;

class CustomerRepository extends Repository
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
        return 'App\\Customer';
    }

    public function getUserList($request)
    {
        $data = $request->all();
        $keyword = isset($data['keyword']) ? $data['keyword'] : '';
        $paginate = $this->model->where(['deleted' => 0])
            ->when($keyword, function ($query) use ($keyword) {
                $query->where(function ($query) use ($keyword) {
                    return $query->orWhere('username', 'like', "%{$keyword}%")
                        ->orWhere('email', 'like', "%{$keyword}%");
                });
            })->paginate($request->pageSize);

        return collection($paginate);
    }

    public function saveUser($request)
    {
        $data = $request->all();
        $data['password'] = bcrypt($data['password']);
        //dd($data['password']);die();
        $res = $this->model->create($data);

        return $this->respondWith(['created' => (bool) $res, 'customer' => $res]);
    }

    public function getUserInfo($request)
    {
        $data = [
            'login_at' => date('Y-m-d H:i:s', time()),
            'login_ip' => get_client_ip(),
        ];
        $id = \Auth::guard('customer')->user()->id;

        return $this->model::where('id', $id)->update($data);
    }
}
