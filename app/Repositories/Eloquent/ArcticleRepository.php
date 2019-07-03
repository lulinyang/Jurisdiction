<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class ArcticleRepository extends Repository
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
        return 'App\\Models\\Arcticle';
    }

    public function getArcticlList($request)
    {
        $data = $request->all();
        $title = isset($data['title']) ? $data['title'] : '';
        $paginate = DB::table('cms_article')
                    ->Where('deleted', 0)
                    ->Where('title', 'like', "%{$title}%")
                    ->orderBy('created_at', 'desc')
                    ->paginate(8);

        return collection($paginate);
    }

    public function addarticle($request)
    {
        $params = $request->all();
        $params['create_user'] = \Auth::guard('customer')->user()->username;
        if (!isset($params['id'])) {
            $res = $this->create($params);

            return $this->respondWith(['created' => (bool) $res, 'arcticle' => $res]);
        } else {
            $arr = [
                'title' => $params['title'],
                'thumbnail' => $params['thumbnail'],
                'describe' => $params['describe'],
                'content' => $params['content'],
                'type' => $params['type'],
                'update_user' => $params['create_user'],
            ];
            // dd($arr);
            $res = $this->update($arr, $params['id']);

            return $this->respondWith(['updated' => (bool) $res, 'arcticle' => $res]);
        }
    }

    public function getArticle($request)
    {
        $params = $request->all();
        $result = $this->getById($params['id']);

        return collection(['code' => '200', 'result' => $result]);
    }

    public function deleteArcticle($request)
    {
        $params = $request->all();
        $result = $this->update(['deleted' => 1], $params['id']);

        return collection(['code' => '200', 'result' => $result]);
    }
}
