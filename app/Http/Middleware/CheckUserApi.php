<?php

namespace App\Http\Middleware;

use Closure;
use DB;

class CheckUserApi
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure                 $next
     *
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $apiKey = isset($request->apiKey) ? $request->apiKey : false;
        $uid = isset($request->uid) ? $request->uid : false;
        if($uid) {
            $user = DB::table('cms_user')->where([
                'deleted' => 0,
                'id' => $uid
            ])->first();
            if(!$user) {
                abort(405, 'not allowed.'); 
            }
        }
        if ($apiKey && $apiKey === 'iSqQiR68eFhYnYQ1CwZJgCxdnUMNdqJiUcIHq4Gg') {
            return $next($request);
        }
        abort(403, 'Access Denied.');
    }
}
