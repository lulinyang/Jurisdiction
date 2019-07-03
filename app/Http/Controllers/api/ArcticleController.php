<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\ArcticleRepository as Arcticle;

class ArcticleController extends Controller
{
    private $arcticle;

    public function __construct(Arcticle $arcticle)
    {
        $this->arcticle = $arcticle;
    }

    public function addarticle(Request $request)
    {
        $result = collect($this->arcticle->addarticle($request))->toJson();

        return $result;
    }

    public function getArcticlList(Request $request)
    {
        $result = collect($this->arcticle->getArcticlList($request))->toJson();

        return $result;
    }

    public function getArticle(Request $request)
    {
        $result = collect($this->arcticle->getArticle($request))->toJson();

        return $result;
    }

    public function deleteArcticle(Request $request)
    {
        $result = collect($this->arcticle->deleteArcticle($request))->toJson();

        return $result;
    }
}
