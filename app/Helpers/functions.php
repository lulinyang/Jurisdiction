<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/7
 * Time: 23:58.
 */
function guid()
{
    $charid = strtoupper(md5(uniqid(mt_rand(), true)));
    $uuid = substr($charid, 0, 8)
        .substr($charid, 8, 4)
        .substr($charid, 12, 4)
        .substr($charid, 16, 4)
        .substr($charid, 20, 12);

    return $uuid;
}

/**
 * 获取客户端 ip.
 *
 * @return array|false|string|null
 */
function get_client_ip()
{
    static $realip = null;
    if ($realip !== null) {
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
        if (getenv('HTTP_X_FORWARDED_FOR')) {
            $realip = getenv('HTTP_X_FORWARDED_FOR');
        } elseif (getenv('HTTP_CLIENT_IP')) {
            $realip = getenv('HTTP_CLIENT_IP');
        } else {
            $realip = getenv('REMOTE_ADDR');
        }
    }

    return $realip;
}

/**
 * 判断数组的键是否存在，并且值不为空.
 *
 * @param $arr
 * @param $column
 *
 * @return null
 */
function isset_and_not_empty($arr, $column)
{
    return (isset($arr[$column]) && $arr[$column]) ? $arr[$column] : '';
}

/**
 * 过滤用户输入数据.
 *
 * @param $str
 *
 * @return mixed
 */
function trimall($str)
{
    $qian = array(' ', '　', "\t", "\n", "\r");
    $qian = array(' ', '　', "\t");
    $hou = array('', '', '');

    return str_replace($qian, $hou, $str);
}

/**
 * 将时间戳转换成 xx 时\xx 分.
 *
 * @param $time
 *
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
 * 根据经纬度获取两点间的直线距离，返回 KM.
 *
 * @param $lon1
 * @param $lat1
 * @param $lon2
 * @param $lat2
 *
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
function object2array($object)
{
    if (is_object($object)) {
        foreach ($object as $key => $value) {
            $array[$key] = $value;
        }
    } else {
        $array = $object;
    }

    return $array;
}

//数组转对象
function array2object($array)
{
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
function generate_str($length = 4)
{
    // 密码字符集，可任意添加你需要的字符
    $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_ []{}<>~`+=,.;:/?|';
    $str = '';
    for ($i = 0; $i < $length; ++$i) {
        $str .= $chars[mt_rand(0, strlen($chars) - 1)];
    }

    return $str;
}

function getWeek(String $type)
{
    switch ($type) {
        case 'month':
            $y = date('Y', time());
            $m = date('m', time());
            $d = date('d', time());
            $t = date('t', time());
            $start = date('Y-m-d', mktime(0, 0, 0, $m, 1, $y)); // 创建本月开始时间
            $end = date('Y-m-d', mktime(23, 59, 59, $m, $t, $y)); //创建本月结束时间
        break;
        case 'week':
            //当前日期
            $sdefaultDate = date('Y-m-d');
            //$first =1 表示每周星期一为开始日期 0表示每周日为开始日期
            $first = 1;
            //获取当前周的第几天 周日是 0 周一到周六是 1 - 6
            $w = date('w', strtotime($sdefaultDate));
            //获取本周开始日期，如果$w是0，则表示周日，减去 6 天
            $start = date('Y-m-d', strtotime("$sdefaultDate -".($w ? $w - $first : 6).' days'));
            //本周结束日期
            $end = date('Y-m-d', strtotime("$start +6 days"));
        break;
        case 'day':
            $start = date('Y-m-d', mktime(0, 0, 0, date('m'), date('d'), date('Y'))); //创建日开始时间
            $end = date('Y-m-d', mktime(23, 59, 59, date('m'), date('d'), date('Y'))); //创建日结束时间
        break;
        case 'year':
            $start = date('Y-m-d', strtotime(date('Y', time()).'-1'.'-1')); //本年开始
            $end = date('Y-m-d', strtotime(date('Y', time()).'-12'.'-31')); //本年结束
        break;
    }

    return ['start' => $start, 'end' => $end];
}

function getTree($data, $pid = 0)
{
    $tree = array();
    foreach ($data as $k => $v) {
        //父亲找到儿子
        if ($v['pid'] == $pid) {
            $v['children'] = getTree($data, $v['id']);
            $tree[] = $v;
            //unset($data[$k]);
        }
    }

    return $tree;
}

function cateSort($array, $pid = 0, $level = 0)
{
    //声明静态数组,避免递归调用时,多次声明导致数组覆盖
    static $list = [];
    foreach ($array as $key => $value) {
        //第一次遍历,找到父节点为根节点的节点 也就是pid=0的节点
        if ($value['pid'] == $pid) {
            //父节点为根节点的节点,级别为0，也就是第一级
            // $value['level'] = $level;
            $value['name'] = str_repeat('---', $value['level']).$value['name'];
            //把数组放到list中
            $list[] = $value;
            //把这个节点从数组中移除,减少后续递归消耗
            unset($array[$key]);
            //开始递归,查找父ID为该节点ID的节点,级别则为原级别+1
            cateSort($array, $value['id'], $level + 1);
        }
    }

    return $list;
}

 //十进制转换三十六进制
 function enid($int, $format = 2)
 {
     $dic = array(
        0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
        10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F', 16 => 'G', 17 => 'H', 18 => 'I',
        19 => 'J', 20 => 'K', 21 => 'L', 22 => 'M', 23 => 'N', 24 => 'O', 25 => 'P', 26 => 'Q', 27 => 'R',
        28 => 'S', 29 => 'T', 30 => 'U', 31 => 'V', 32 => 'W', 33 => 'X', 34 => 'Y', 35 => 'Z',
        );
     $arr = array();
     $loop = true;
     while ($loop) {
         $arr[] = $dic[bcmod($int, 36)];
         $int = floor(bcdiv($int, 36));
         if ($int == 0) {
             $loop = false;
         }
     }
     $arr = array_pad($arr, $format, $dic[0]);

     return implode('', array_reverse($arr));
 }

function post_url($url, $data)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    if (!empty($data)) {
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($ch);
    curl_close($ch);

    return  $output;
}

function returnApi($data, $code = 200, $stateMsg = 'Success')
{
    $arr = [
        'code' => $code,
        'stateMsg' => $stateMsg,
        'data' => $data,
    ];

    return collect(collection($arr))->toJson();
}

function returnArr($data, $code = 200, $stateMsg = 'Success')
{
    $arr = [
        'code' => $code,
        'stateMsg' => $stateMsg,
        'data' => $data,
    ];

    return $arr;
}

function juhecurl($url, $params = false, $ispost=0) 
{
    $httpInfo = array();
    $ch = curl_init();
    curl_setopt( $ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1 );
    curl_setopt( $ch, CURLOPT_USERAGENT, 'JuheData' );
    curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT, 60 );
    curl_setopt( $ch, CURLOPT_TIMEOUT, 60 );
    curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
    curl_setopt( $ch, CURLOPT_FOLLOWLOCATION, true );
    if($ispost) {
        curl_setopt( $ch, CURLOPT_POST, true);
        curl_setopt( $ch, CURLOPT_POSTFIELDS, $params );
        curl_setopt( $ch, CURLOPT_URL, $url );
    }else {
        if($params) {
            curl_setopt( $ch, CURLOPT_URL, $url.'?'.$params );
        }else{
            curl_setopt( $ch, CURLOPT_URL, $url );
        }
    }
    $response = curl_exec($ch);
    if ($response === FALSE) {
        return false;
    }

    $httpCode = curl_getinfo($ch , CURLINFO_HTTP_CODE);
    $httpInfo = array_merge($httpInfo, curl_getinfo($ch));
    curl_close($ch);
    return $response;
}
