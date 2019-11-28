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

    public function getWeather($cityid = '101031300') 
    {
        $appid = '73138142';
        $appsecret = '336HRSiT';
        $version = 'v1';
        $record = DB::table('cms_weather')->where('city_id', $cityid)->orderBy('created_at', 'desc')->first();
        // dd($record);
        if($record) {
            $created_at = strtotime($record->created_at);
            if(time() - $created_at < 600) {
                return $record;
            }
        }
        $url = 'https://www.tianqiapi.com/api/?appid='. $appid .'&appsecret='. $appsecret .'&version='.$version.'&cityid='. $cityid;
        $res = doCurl($url);
        $weather = json_decode($res, true);
        // dd($weather['data']);
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
        // $params = $request->all();
        $res = DB::table('cms_yellow_calendar')->orderBy('created_at', 'desc')->first();
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
    
}

// renderReverse&&renderReverse({"status":0,"result":{"location":{"lng":117.20591355363998,"lat":39.09090829382309},"formatted_address":"天津市河西区宾水道5号","business":"宾水道,宾西,马场道","addressComponent":{"country":"中国","country_code":0,"country_code_iso":"CHN","country_code_iso2":"CN","province":"天津市","city":"天津市","city_level":2,"district":"河西区","town":"","town_code":"","adcode":"120103","street":"宾水道","street_number":"5号","direction":"东南","distance":"82"},"pois":[{"addr":"天津市河西区友谊路30号","cp":"","direction":"内","distance":"0","name":"天津市政府","poiType":"政府机构","point":{"x":117.20808224280224,"y":39.09108551655561},"tag":"政府机构;各级政府","tel":"","uid":"bceaf0faf7b63ea0018972cf","zip":"","parent_poi":{"name":"","tag":"","addr":"","point":{"x":0.0,"y":0.0},"direction":"","distance":"","uid":""}},{"addr":"友谊路街道宾馆西路与叠彩道交口","cp":" ","direction":"北","distance":"193","name":"三轻楼","poiType":"房地产","point":{"x":117.20632156400268,"y":39.08959433637274},"tag":"房地产;住宅区","tel":"","uid":"9c716eb3d8d38bc2fda77814","zip":"","parent_poi":{"name":"","tag":"","addr":"","point":{"x":0.0,"y":0.0},"direction":"","distance":"","uid":""}},{"addr":"天津市河西区宾水道9号","cp":" ","direction":"北","distance":"250","name":"欧亚花园","poiType":"房地产","point":{"x":117.2051896990601,"y":39.08924428946971},"tag":"房地产;住宅区","tel":"","uid":"6fddd7fda779237e3517dc3a","zip":"","parent_poi":{"name":"","tag":"","addr":"","point":{"x":0.0,"y":0.0},"direction":"","distance":"","uid":""}},{"addr":"宾水道增9号环渤海发展中心A座10-11层","cp":" ","direction":"东北","distance":"318","name":"天津市应急管理局","poiType":"政府机构","point":{"x":117.20353681692174,"y":39.08966434554316},"tag":"政府机构;行政单位","tel":"","uid":"e889a744ec0829c88605bfc2","zip":"","parent_poi":{"name":"环渤海发展中心","tag":"房地产;写字楼","addr":"河西宾水道增9号","point":{"x":117.20353681692174,"y":39.089328300886169},"direction":"东北","distance":"347","uid":"bf90d20594b8a90b4c6d4607"}},{"addr":"宾水道16号","cp":" ","direction":"东","distance":"309","name":"天津宾馆-会议中心","poiType":"文化传媒","point":{"x":117.20315054555245,"y":39.091169525760928},"tag":"文化传媒;展览馆","tel":"","uid":"4ff7da461a759f47901fc9e9","zip":"","parent_poi":{"name":"万丽天津宾馆","tag":"酒店;星级酒店","addr":"河西区宾水道16号","point":{"x":117.20223427393228,"y":39.091008508028789},"direction":"东","distance":"409","uid":"12ee3e7a3a2157b7c056ac0c"}},{"addr":"宾水道9号环渤海发展中心A座7-8层","cp":" ","direction":"东北","distance":"338","name":"天津市旅游局","poiType":"政府机构","point":{"x":117.20325834221365,"y":39.08975535735996},"tag":"政府机构;行政单位","tel":"","uid":"803708f1f61aed7a018972f3","zip":"","parent_poi":{"name":"环渤海发展中心","tag":"房地产;写字楼","addr":"河西宾水道增9号","point":{"x":117.20353681692174,"y":39.089328300886169},"direction":"东北","distance":"347","uid":"bf90d20594b8a90b4c6d4607"}},{"addr":"叠彩道与宾馆西路交叉口东南50米","cp":" ","direction":"北","distance":"329","name":"天宾公寓","poiType":"房地产","point":{"x":117.20691444563926,"y":39.08874021885221},"tag":"房地产;住宅区","tel":"","uid":"680fb70350cc4b9d8bb98839","zip":"","parent_poi":{"name":"","tag":"","addr":"","point":{"x":0.0,"y":0.0},"direction":"","distance":"","uid":""}},{"addr":"河西区宾水道16号","cp":" ","direction":"东","distance":"409","name":"万丽天津宾馆","poiType":"酒店","point":{"x":117.20223427393228,"y":39.091008508028789},"tag":"酒店;星级酒店","tel":"","uid":"12ee3e7a3a2157b7c056ac0c","zip":"","parent_poi":{"name":"","tag":"","addr":"","point":{"x":0.0,"y":0.0},"direction":"","distance":"","uid":""}},{"addr":"宾水道增9号环渤海发展中心A座15～19层","cp":" ","direction":"东北","distance":"342","name":"天房集团","poiType":"公司企业","point":{"x":117.20341105415035,"y":39.089517326204347},"tag":"公司企业;公司","tel":"","uid":"803708f1f200e107018972ea","zip":"","parent_poi":{"name":"环渤海发展中心-A座","tag":"房地产;写字楼","addr":"天津市河西区宾水道15号","point":{"x":117.20317749471775,"y":39.089307298041507},"direction":"东北","distance":"380","uid":"f9fd60629f56411e0f0e6b35"}},{"addr":"河西区宾水道增9号","cp":" ","direction":"东北","distance":"338","name":"上海浦东发展银行(天津分行)","poiType":"金融","point":{"x":117.20325834221365,"y":39.08975535735996},"tag":"金融;银行","tel":"","uid":"0d84b2f3d1f943662b11d12c","zip":"","parent_poi":{"name":"环渤海发展中心","tag":"房地产;写字楼","addr":"河西宾水道增9号","point":{"x":117.20353681692174,"y":39.089328300886169},"direction":"东北","distance":"347","uid":"bf90d20594b8a90b4c6d4607"}}],"roads":[],"poiRegions":[{"direction_desc":"内","name":"天津市政府","tag":"政府机构;各级政府","uid":"bceaf0faf7b63ea0018972cf","distance":"0"}],"sematic_description":"天津市政府内","cityCode":332}})
