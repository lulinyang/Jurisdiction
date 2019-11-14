<?php

namespace App\Http\Middleware;

use Closure;

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
        $apiKey = isset($request->all()['apiKey']) ? $request->all()['apiKey'] : false;
        if ($apiKey && $apiKey === 'iSqQiR68eFhYnYQ1CwZJgCxdnUMNdqJiUcIHq4Gg') {
            return $next($request);
        }
        abort(403, 'Access Denied.');
    }
}
