<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\FabulousRepository as Fabulous;

class FabulousController extends Controller
{
    private $fabulous;

    public function __construct(Fabulous $fabulous)
    {
        $this->fabulous = $fabulous;
    }

    public function saveFabulous(Request $request)
    {
        return collect($this->fabulous->saveFabulous($request))->toJson();
    }

}
