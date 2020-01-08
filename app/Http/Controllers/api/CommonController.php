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
    /**
     * 上传聊天记录的图片，方便管理
     */
    public function upChatImage(Request $request)
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
            $path = $img->store('\/chat\/'.date('Ymd'));

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

    public function getWeather($cityid = '101031300') 
    {
        $appid = '73138142';
        $appsecret = '336HRSiT';
        $version = 'v1';
        $record = DB::table('cms_weather')->where('city_id', $cityid)->orderBy('created_at', 'desc')->first();
        if($record) {
            $created_at = strtotime($record->created_at);
            if(time() - $created_at < 600) {
                return $record;
            }
        }
        $url = 'https://www.tianqiapi.com/api/?appid='. $appid .'&appsecret='. $appsecret .'&version='.$version.'&cityid='. $cityid;
        $res = doCurl($url);
        $weather = json_decode($res, true);
        $arr = [
            'city_id' => $weather['cityid'],
            'city_name' => $weather['city'],
            'cityEn' => $weather['cityEn'],
            'week' => $weather['data'][0]['week'],
            'wea' => $weather['data'][0]['wea'],
            'tem' => $weather['data'][0]['tem'],
            'tem1' => $weather['data'][0]['tem1'],
            'tem2' => $weather['data'][0]['tem2'],
            'content' => $res,
            'created_at' => date('Y-m-d H:i:s', time())
        ];
        $id = DB::table('cms_weather')->insertGetId($arr);
        if($id) {
            $arr['id'] = $id;
            return $arr;
        }else {
            return false;
        }
    }

    public function getHuangLi(Request $request) 
    {
        $res = DB::table('cms_yellow_calendar')->orderBy('created_at', 'desc')->first();
        return returnApi($res);
    }

    public function getHistoryToday(Request $request) 
    {
        $params = $request->all();
        $month = date('m', time());
        $day = date('d', time());
        if(isset($params['month'])) {
            $month = $params['month'];
        }
        if(isset($params['day'])) {
            $day = $params['day'];
        }
        $res = DB::table('cms_history_today')
            ->where([
                'month' => $month,
                'day' => $day
            ])->orderBy('created_at', 'desc')
            ->get();
        return returnApi($res);
    }

    public function setPosition(Request $request)
    {
        $params = $request->all();
        $BaiduAK = 'XukqpMn2Psn4Q1YGQcNGHlHAyQ2uuP7z';
        
        if(!isset($params['lat'])) {
            return returnArr(false, 20001, '没有获取到纬度！');
        }

        if(!isset($params['lng'])) {
            return returnArr(false, 20002, '你还没没有获取到经度！');
        }
        $arr = [
            'lng' => $params['lng'],
            'lat' => $params['lat']
        ];
        try {
            $url = "http://api.map.baidu.com/geocoder/v2/?callback=renderReverse&location=".$params['lat'] ."," .$params['lng'] ."&output=json&pois=1&latest_admin=1&ak=".$BaiduAK;
            if(isset($params['uid'])) {
                DB::table('cms_user')->where('id', $params['uid'])->update($arr);
            }
            $res = doCurl($url);
            preg_match('/\(.*\)/', $res, $res);
            $result = preg_replace('/\(|\)/',"", $res);
            $data = json_decode($result[0], true);
            $province = $data['result']['addressComponent']['province'];
            $city = $data['result']['addressComponent']['district'];
            $sql = "SELECT id FROM `cms_city` WHERE INSTR(?, `cityZh`) AND INSTR(?, `provinceZh`)";
            $cityId = DB::select($sql, [$city, $province]);
            $weather = $this->getWeather($cityId[0]->id);
        } catch (\Throwable $th) {
            $weather = $this->getWeather();
        }

        if($weather) {
            return returnApi($weather);
        }else {
            return returnApi($arr, 20001, '操作失败');
        }  
		
    }

    /**
     * 保存宗祠文件
     */
    public function uploadAncestralFile(Request $request)
    {
        $params = $request->all();
        if (!isset($params['ancestral_id'])) {
			return returnApi(false, 20001, '缺少ancestral_id参数！');
        }
        
        $file = $this->upAncestralFile($request, $params['ancestral_id']);
        if(!$file[0]) {
            return returnApi(false, 20002, $file[1]);
        }

        $arr = [
            'ancestral_id' => $params['ancestral_id'],
            'link' => $file[1]['link'],
            'filesize' => $file[1]['filesize'],
            'old_name' => $file[1]['originalName'],
            'name' => $file[1]['originalName'],
            'ext' => $file[1]['ext'],
            'created_at' => date('Y-m-d H:i:s', time()),
            'updated_at' => date('Y-m-d H:i:s', time())
        ];
        if(isset($params['uid'])) {
            $arr['uid'] = $params['uid'];
        }

        if(isset($params['name'])) {
            $arr['name'] = $params['name'];
        }
        
        $res = DB::table('cms_upload_file')->insert($arr);
		if($res) {
			return returnApi($res, 200, '发布成功！');
		}
		return returnApi($res, 20003, '发布失败！');
    }

    /**
     * 上传宗祠文件
     */
    public function upAncestralFile($request, $ancestral_id)
    {
        if (!$request->hasFile('file')) {
            return [false, '文件不存在！'];
        } else {
            $file = $request->file('file');
            $filesize = $file -> getClientSize();
            if($filesize > 5 * 1024 * 1024) {
                return [false, '文件太大，最大可上传5M！']; 
            }
            $originalName = explode(".", $file->getClientOriginalName())[0];
            // 获取后缀名
            $ext = $file->extension();
            // 新文件名
            $saveName = time().rand().'.'.$ext;
            // 使用 store 存储文件
            $path = $file->store('\/ancestral\/'.'\/'.$ancestral_id.'\/'.date('Ymd'));

            return [true, [
                'link' => '\/uploads\/'.$path,
                'filesize' => $filesize,
                'originalName' => $originalName,
                'ext' => $ext
            ]];
        }
    }

    public function getSysMessageList(Request $request)
    {
        $params = $request->all();
		if (!isset($params['uid'])) {
			return returnArr(false, 20000, '请先登录！');
        }
        $pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
        $paginate = DB::table('cms_system_message')
            ->where('deleted', 0)
            ->where('uid', $params['uid'])
            ->orderBy('created_at', 'desc')
            ->paginate($pageSize);
        return collection(returnArr($paginate));
    }
    
}

