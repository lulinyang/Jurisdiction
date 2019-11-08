<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Service\OSS;

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

    public function upOssImage(Request $request)
    {
        if (!$request->hasFile('img')) {
            return returnApi(false, 20004, '文件不存在');
        } else {
            $img = $request->file('img');
            // 获取后缀名
            $ext = $img->getClientOriginalExtension();
            // 判断图片有效性
            if (!$img->isValid()) {
                return returnApi(false, 20003, '上传图片无效..');
            }
            // 获取图片在临时文件中的地址
            $pic = $img->getRealPath();
            // 制作文件名
            $key = date('Ymd').'/'.time().rand(10000, 99999999).'.'.$ext;
            //阿里 OSS 图片上传
            $result = OSS::upload($key, $pic);
            $url = OSS::getUrl($key);
            if ($url) {
                $url = explode('?', $url)[0];

                return returnApi($url);
            } else {
                return returnApi(false, 20001, '上传失败！');
            }
        }
    }

    public function upImage(Request $request)
    {
        if (!$request->hasFile('img')) {
            return returnApi(false, 20001, '文件不存在！');
        } else {
            $img = $request->file('img');
            // 获取后缀名
            $ext = $img->extension();
            // 新文件名
            $saveName = time().rand().'.'.$ext;
            // 使用 store 存储文件
            $path = $img->store(date('Ymd'));

            return returnApi('\/uploads\/'.$path);
        }
    }
}
