<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;
class CronController extends Controller
{
    //
    public function test()
    {
        $res = Redis::incr('id');
        return returnApi($res);
    }
}
