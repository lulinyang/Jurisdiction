<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Service\OSS;
use Illuminate\Support\Facades\Redis;

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

    public function sendMsg(Request $request)
    {
        $params = $request->all();
        if (!isset($params['tel'])) {
            return returnApi(false, 20001, '缺少手机号！');
        }
        $to = $params['tel'];
        $accountSid = '8a216da86e011fa3016e54b341f32ce8';
        $accountToken = '0510dbc31b374310bc6000923cda336a';
        $appId = '8a216da86e011fa3016e54b342462cee';
        $serverIP = 'app.cloopen.com';
        $serverPort = '8883';
        $softVersion = '2013-12-26';
        $rest = new \REST($serverIP, $serverPort, $softVersion);
        $rest->setAccount($accountSid, $accountToken);
        $rest->setAppId($appId);
        $code = mt_rand(999, 9999);
        $result = $rest->sendTemplateSMS($to, [$code, 5], 1);
        if ($result == null) {
            return returnApi(false, 20002, '发送失败！');
        }
        if ($result->statusCode != 0) {
            return returnApi(false, 20003, '模板短信发送失败!');
        } else {
            Redis::setex('tel_'.$to, 5 * 60, $code);
            return returnApi('模板短信发送成功!');
        }
    }

    public function historyToday()
    {
        $appkey = "6822593cc5c48bb8e5447ef088ac5f3e";
        $dateArr = explode("-", Date('Y-m-d', time()));
        $params = array(
            "key" => $appkey,
            "v" => "1.0",//版本，当前：1.0
            "month" => $dateArr[1],//月份，如：10
            "day" => $dateArr[2],//日，如：1
        );
        $url = "http://api.juheapi.com/japi/toh";
        $paramstring = http_build_query($params);
        $content = juhecurl($url,$paramstring);
        $result = json_decode($content,true);
        if($result){
            if($result['error_code']=='0'){
                $arr = [];
                foreach($result['result'] as $value) {
                    $item = [];
                    $item["title"] = $value['title'];
                    $item["pic"] = $value['pic'];
                    $item["year"] = $value['year'];
                    $item["month"] = $value['month'];
                    $item["day"] = $value['day'];
                    $item["des"] = $value['des'];
                    $item["lunar"] = $value['lunar'];
                    $item["created_at"] = date('Y-m-d H:m:s', time());
                    $arr[] = $item;
                }
               
                $res = DB::table('cms_history_today')->insert($arr);
                echo 'true';
                // return returnApi($res);
            }else{
                echo $result['error_code'].":".$result['reason'];
            }
        }else{
            echo "请求失败";
        }
    }
}
