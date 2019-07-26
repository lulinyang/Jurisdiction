<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Log;
use EasyWeChat\Factory;
use Illuminate\Support\Facades\Redis;
use App\Service\WeChat;

class WeChatController extends BaseController
{
    private $urls;

    public function __construct()
    {
        $this->urls = config('wechat.official_interface');
    }

    public function serve()
    {
        if (!isset($_GET['echostr'])) {
            $postStr = $GLOBALS["HTTP_RAW_POST_DATA"]; //获取POST数据
  //用SimpleXML解析POST过来的XML数据
  $postObj = simplexml_load_string($postStr,'SimpleXMLElement',LIBXML_NOCDATA);
  $fromUsername = $postObj->FromUserName; //获取发送方帐号（OpenID）
  $toUsername = $postObj->ToUserName; //获取接收方账号
  $keyword = trim($postObj->Content); //获取消息内容
  $masType = $postObj->MsgType;//获取消息类型
  $time = time(); //获取当前时间戳
  
   //---------- 返 回 数 据 ---------- //
  //返回消息模板
   $textTpl = "<xml>
    <ToUserName><![CDATA[%s]]></ToUserName>
    <FromUserName><![CDATA[%s]]></FromUserName>
    <CreateTime>%s</CreateTime>
    <MsgType><![CDATA[%s]]></MsgType>
    <Content><![CDATA[%s]]></Content>
    <FuncFlag>0</FuncFlag>
    </xml>"; 
    
    $msgType = "text"; //消息类型
    $contentStr = '您发送的是'.$keyword;
    $resultStr = sprintf($textTpl,$fromUsername,$toUsername,$time,$msgType,$contentStr);
    echo $resultStr;
            // $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];
            // if (!empty($postStr)){
            //     $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
            //     $MsgType = trim($postObj->MsgType);
            //     switch($MsgType) {
            //         case 'event':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         case 'text':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         case 'image':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         case 'voice':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         case 'video':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         case 'location':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         case 'link':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         case 'file':
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //         default:
            //             $result = $this->transmitText($postObj, 'aaa');
            //             break;
            //     }
            // }else {
            //     echo "";exit;
            // }
        }else{
            define("TOKEN", getenv('WECHAT_OFFICIAL_ACCOUNT_TOKEN'));
            $wechatObj = new WeChat();
            $wechatObj->valid();
        }
    }

    public function doEvent($postObj)
    {
        return $postObj;
    }

    public function createMenu()
    {
       $menu = config('wechat.menu');
       $url = $this->urls['CREATE_MENU_URL'];
       $access_token = $this->accessToken();
       if(!$access_token) {
           dd('accessToken不正确');
       }else {
            $url .= $access_token;
            $res = post_url($url, json_encode($menu, JSON_UNESCAPED_UNICODE));
            dd($res);
       }
    }

    private function accessToken()
    {
        $access_token = Redis::get('access_token');
        if($access_token) {
            $result = $access_token;
        }else{
            $config = [
                'app_id' => getenv('WECHAT_OFFICIAL_ACCOUNT_APPID'),
                'secret' => getenv('WECHAT_OFFICIAL_ACCOUNT_SECRET')
            ];
            $app = Factory::officialAccount($config);
            $accessToken = $app->access_token;
            try {
                $token = $accessToken->getToken(true);
                Redis::setex('access_token', ($token['expires_in'] - 100) ,$token['access_token']);
                $result = $token['access_token'];
            } catch (\Exception $e) {
                $result = false;
            } 
        }
        return $result;
    }

    public function getToken()
    {   
        $access_token = Redis::get('access_token');
        if($access_token) {
            $result = [
                'code' => '200',
                'access_token' => $access_token,
                'mgs' => 'ok'
            ];
            $result = collect(collection($result))->toJson();
        }else{
            $config = [
                'app_id' => getenv('WECHAT_OFFICIAL_ACCOUNT_APPID'),
                'secret' => getenv('WECHAT_OFFICIAL_ACCOUNT_SECRET')
            ];
            $app = Factory::officialAccount($config);
            $accessToken = $app->access_token;
            try {
                $token = $accessToken->getToken(true);
               
                Redis::setex('access_token', ($token['expires_in'] - 100) ,$token['access_token']);
                $result = [
                    'code' => '200',
                    'access_token' => $token['access_token'],
                    'mgs' => 'ok'
                ];
                $result = collect(collection($result))->toJson();
            } catch (\Exception $e) {
                $error = $e->formattedResponse;
                $result = [
                    'code' => $error['errcode'],
                    'access_token' => '',
                    'mgs' => $error['errmsg'],
                    'errmsg' => $e->getMessage()
                ];
                $result = collect(collection($result))->toJson();
            } 
        }
        return $result;
    }

    /*
    * 接收文本消息
    */
    private function receiveText($object)
    {
        $content = "你发送的是文本，内容为：".$object->Content;
        $result = $this->transmitText($object, $content);
        return $result;
    }


    /*
    * 回复文本消息
    */
    private function transmitText($object, $content)
    {
        $textTpl = "<xml>
        <ToUserName><![CDATA[%s]]></ToUserName>
        <FromUserName><![CDATA[%s]]></FromUserName>
        <CreateTime>%s</CreateTime>
        <MsgType><![CDATA[text]]></MsgType>
        <Content><![CDATA[%s]]></Content>
        </xml>";
        $result = sprintf($textTpl, $object->FromUserName, $object->ToUserName, time(), $content);
        return $result;
    }
}
