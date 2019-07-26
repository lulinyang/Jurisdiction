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
            $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];
            if (!empty($postStr)){
                libxml_disable_entity_loader(true);
                $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
                $msgType = trim($postObj->MsgType);
                switch($msgType) {
                    case 'event':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    case 'text':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    case 'image':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    case 'voice':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    case 'video':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    case 'location':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    case 'link':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    case 'file':
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                    default:
                        $result = $this->transmitText($postObj, 'aaa');
                        break;
                }
            }else {
                echo "";exit;
            }
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
