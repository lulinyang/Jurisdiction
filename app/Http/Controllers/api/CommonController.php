<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;

class CommonController extends Controller
{
    private function getTree($data, $pid = 0)
    {
        $tree = array();
        foreach ($data as $k => $v) {
            //父亲找到儿子
            if ($v['pid'] == $pid) {
                $v['title'] = $v['name'];
                $v['index'] = $v['index'] == null ? ' ' : $v['index'];
                $v['subs'] = $this->getTree($data, $v['id']);
                $tree[] = $v;
                //unset($data[$k]);
            }
        }

        return $tree;
    }

    public function getJurisdiction()
    {
        $user = \Auth::guard('customer')->user();
        $id = $user->id;
        $roleId = $user->role_id;
        $role = DB::table('cms_roles')->where('id', $roleId)->first();
        $user->role = $role;
        $permIds = $role->permission_id;
        $perms = [];
        if($permIds) {
            $permId_arr = explode(",", $permIds);
            $perms =  DB::table('cms_permissions')
                        ->whereIn('id', $permId_arr)
                        ->get()
                        ->map(function ($value) {return (array)$value;})
    		->toArray();
            $perms = empty($perms) ? false : $this->getTree($perms);
        }
        return collect(collection($perms))->toJson();;
    }
}
