<?php

namespace App\Http\Controllers\api;

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
                $subs = $this->getTree($data, $v['id']);
                if (!empty($subs)) {
                    $v['subs'] = $this->getTree($data, $v['id']);
                }
                $tree[] = $v;
                //unset($data[$k]);
            }
        }

        return $tree;
    }

    public function getJurisdiction()
    {
        $user = \Auth::guard('customer')->user();
        //admin 账号拥有所有权限
        $perms = [];

        if ($user->username === 'admin') {
            $perms = DB::table('cms_permissions')
                    ->orderBy('top', 'desc')
                    ->orderBy('sort', 'desc')
                    ->get()
                    ->map(function ($value) {
                        return (array) $value;
                    }
                    )->toArray();

            $perms = $this->getTree($perms);
        } else {
            $roleId = $user->role_id;
            $role = DB::table('cms_roles')->where('id', $roleId)->first();
            $permIds = $role->permission_id;

            if ($permIds) {
                $permId_arr = explode(',', $permIds);
                $perms = DB::table('cms_permissions')
                            ->orderBy('top', 'desc')
                            ->orderBy('sort', 'desc')
                            ->whereIn('id', $permId_arr)
                            ->get()
                            ->map(function ($value) {
                                return (array) $value;
                            }
                            )->toArray();
                $perms = $this->getTree($perms);
            }
        }

        return returnApi($perms);
    }
}
