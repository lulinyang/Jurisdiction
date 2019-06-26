<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/7
 * Time: 23:58
 */

function guid() {
    $charid = strtoupper(md5(uniqid(mt_rand(), true)));
    $uuid = substr($charid, 0, 8)
        .substr($charid, 8, 4)
        .substr($charid,12, 4)
        .substr($charid,16, 4)
        .substr($charid,20,12);
    return $uuid;
}

/**
 * 获取客户端 ip
 * @return array|false|null|string
 */
function get_client_ip()
{
    static $realip = NULL;
    if ($realip !== NULL) {
        return $realip;
    }
    //判断服务器是否允许$_SERVER
    if (isset($_SERVER)) {
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $realip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
            $realip = $_SERVER['HTTP_CLIENT_IP'];
        } else {
            $realip = $_SERVER['REMOTE_ADDR'];
        }
    } else {
        //不允许就使用getenv获取
        if (getenv("HTTP_X_FORWARDED_FOR")) {
            $realip = getenv("HTTP_X_FORWARDED_FOR");
        } elseif (getenv("HTTP_CLIENT_IP")) {
            $realip = getenv("HTTP_CLIENT_IP");
        } else {
            $realip = getenv("REMOTE_ADDR");
        }
    }

    return $realip;
}

/**
 * 判断数组的键是否存在，并且值不为空
 * @param $arr
 * @param $column
 * @return null
 */
function isset_and_not_empty($arr, $column)
{
    return (isset($arr[$column]) && $arr[$column]) ? $arr[$column] : '';
}

/**
 * 过滤用户输入数据
 * @param $str
 * @return mixed
 *
 */
function trimall($str)
{
    $qian = array(" ", "　", "\t", "\n", "\r");
    $qian = array(" ", "　", "\t");
    $hou = array("", "", "");
    return str_replace($qian, $hou, $str);
}

/**
 * 将时间戳转换成 xx 时\xx 分
 * @param $time
 * @return array
 */
function get_hour_and_min($time)
{
    $sec = round($time / 60);
    if ($sec >= 60) {
        $hour = floor($sec / 60);
        $min = $sec % 60;

    } else {
        $hour = 0;
        $min = $sec;
    }
    return ['hour' => $hour, 'min' => $min];
}

/**
 * 根据经纬度获取两点间的直线距离，返回 KM
 * @param $lon1
 * @param $lat1
 * @param $lon2
 * @param $lat2
 * @return float
 */
function get_two_position_distance($lon1, $lat1, $lon2, $lat2)
{
    $radius = 6378.137;
    $rad = floatval(M_PI / 180.0);

    $lat1 = floatval($lat1) * $rad;
    $lon1 = floatval($lon1) * $rad;
    $lat2 = floatval($lat2) * $rad;
    $lon2 = floatval($lon2) * $rad;

    $theta = $lon2 - $lon1;

    $dist = acos(sin($lat1) * sin($lat2) +
        cos($lat1) * cos($lat2) * cos($theta)
    );

    if ($dist < 0) {
        $dist += M_PI;
    }

    return round($dist * $radius, 3);
}

// 将目标转化为 collection 对象
if (!function_exists('collection')) {
    function collection($target)
    {
        // 如果目标已为 collection 对象,则直接返回
        if ($target instanceof \Illuminate\Support\Collection) {
            return $target;
        }
        // 否则将目标实例化为 collection 对象返回
        return collect($target);
    }
}

//对象转数组
function object2array($object) {
    if (is_object($object)) {
        foreach ($object as $key => $value) {
            $array[$key] = $value;
        }
    }
    else {
        $array = $object;
    }
    return $array;
}

//数组转对象
function array2object($array) {
    $aboutVideoArr = array();
    if (is_array($array)) {
        foreach ($array as $value) {
            $video = new Video();
            foreach ($value as $key => $val) {
                $video->$key = $val;
            }
            array_push($aboutVideoArr, $video);
        }
    } else {
        $video = $array;
    }
    return $aboutVideoArr;
}

function respond($status, $respond)
{
    return response()->json(['status' => $status, is_string($respond) ? 'message' : 'data' => $respond]);
}
function succeed($respond = 'Request success!')
{
    return respond(true, $respond);
}
function failed($respond = 'Request failed!')
{
    return respond(false, $respond);
}

//生成随机字符串
function generate_str( $length = 4 ) {
// 密码字符集，可任意添加你需要的字符
    $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_ []{}<>~`+=,.;:/?|';
    $str = "";
    for ( $i = 0; $i < $length; $i++ )
    {
        $str .= $chars[ mt_rand(0, strlen($chars) - 1) ];
    }
    return $str;
}

/**
 * @param $url 请求网址
 * @param bool $params 请求参数
 * @param int $ispost 请求方式
 * @param int $https https协议
 * @return bool|mixed
 */
function do_curl($url, $params = false, $ispost = 0, $https = 0,$type ='')
{
    $httpInfo = array();
    $header = [];
    if($type == 'json'){
        $params = json_encode($params);//对数组进行json编码
        $header= array("Content-type: application/json;charset=UTF-8","Accept: application/json","Cache-Control: no-cache", "Pragma: no-cache");
    }

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36');
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
    curl_setopt($ch, CURLOPT_TIMEOUT, 30);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    if ($https) {
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE); // 对认证证书来源的检查
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE); // 从证书中检查SSL加密算法是否存在
    }
    if ($ispost) {
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        curl_setopt($ch, CURLOPT_URL, $url);
        if($type == 'json'){
            curl_setopt($ch,CURLOPT_HTTPHEADER,$header);
        }
    } else {
        if ($params) {
            if (is_array($params)) {
                $params = http_build_query($params);
            }
            curl_setopt($ch, CURLOPT_URL, $url . '?' . $params);
        } else {
            curl_setopt($ch, CURLOPT_URL, $url);
        }
    }

    $response = curl_exec($ch);
    if ($response === FALSE) {
        //echo "cURL Error: " . curl_error($ch);
        return false;
    }
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    $httpInfo = array_merge($httpInfo, curl_getinfo($ch));
    curl_close($ch);
    return $response;
}


function decryptData($appid,$sessionKey,$encryptedData,$iv)
{
    //dd($appid,$sessionKey,$encryptedData,$iv);
    $dir = str_replace('\\','/',realpath(dirname(__FILE__).'/'))."/";
    include_once $dir . "errorCode.php";
    include_once $dir . "wxBizDataCrypt.php";
    $pc = new WXBizDataCrypt($appid, $sessionKey);
    $errCode = $pc->decryptData($encryptedData, $iv, $data );
    if($errCode == 0){
        return $data;
    }else{
        return $errCode;
    }

}

//二进制转图片image/png
function data_uri($contents, $mime)
{
    $base64   = base64_encode($contents);
    return $base64;
}

function Asskeytest($appid,$appsecret)
{
    if(Session::get('access_token_'.$appid) && Session::get('expire_time_'.$appid)>time()){
        return Session::get('access_token_'.$appid);
    }else{
        $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appid."&secret=".$appsecret;
        $ass_key = do_curl($url);
        $ass_key = json_decode($ass_key);
        if(isset($ass_key->errcode)){
            return '';
        }
        $access_token = $ass_key->access_token;
        Session::put('access_token_'.$appid,$access_token);
        Session::put('expire_time_'.$appid,time()+7000);
        return $access_token;
    }
}

/**
 * @author lulinyang <lulingyang@ivtsoft.com>
 * @param String $type
 * @return Array
 * Description: 得到本周的开始日期和结束日期
 */
function getWeek(String $type)
{
    switch($type) {
        case 'month': 
            $y = date("Y",time());
            $m = date("m",time());
            $d = date("d",time());
            $t = date("t",time());
            $start = date('Y-m-d',mktime(0,0,0,$m,1,$y));// 创建本月开始时间
            $end = date('Y-m-d',mktime(23,59,59,$m,$t,$y));//创建本月结束时间
        break;
        case 'week': 
            //当前日期
            $sdefaultDate = date("Y-m-d");
            //$first =1 表示每周星期一为开始日期 0表示每周日为开始日期
            $first = 1;
            //获取当前周的第几天 周日是 0 周一到周六是 1 - 6
            $w = date('w',strtotime($sdefaultDate));
            //获取本周开始日期，如果$w是0，则表示周日，减去 6 天
            $start = date('Y-m-d',strtotime("$sdefaultDate -".($w ? $w - $first : 6).' days'));
            //本周结束日期
            $end = date('Y-m-d',strtotime("$start +6 days"));
        break;
        case 'day': 
            $start = date('Y-m-d',mktime (0,0,0, date( "m"), date( "d"), date( "Y"))); //创建日开始时间
            $end = date('Y-m-d',mktime (23,59,59, date( "m"), date( "d"), date( "Y")));//创建日结束时间
        break;
        case 'year': 
            $start = date('Y-m-d',strtotime(date("Y",time())."-1"."-1")); //本年开始
            $end = date('Y-m-d',strtotime(date("Y",time())."-12"."-31")); //本年结束
        break;
    }
    return ['start' => $start, 'end' => $end];
}

function getTree($data) {
    $tree = [];
    $newData = [];
    //循环重新排列
    foreach ($data as $datum) {
        $newData[$datum['id']] = $datum;
    }
    foreach ($newData as $key => $datum) {
        if ($datum['pid'] > 0) {
            //不是根节点的将自己的地址放到父级的child节点
            $newData[$datum['pid']]['child'][] = &$newData[$key];
        } else {
            //根节点直接把地址放到新数组中
            $tree[] = &$newData[$datum['id']];
        }
    }
    return $tree;
}


function cateSort($data,$pid=0,$level=0) {
    static $arr = array();
    foreach($data as $k => $v) {
        if($v['pid'] == $pid) {
            $arr[$k] = $v;
            $arr[$k]['level'] = $level + 1;
            cateSort($data,$v['id'],$level+1);
        }
    }
    return $arr;
}