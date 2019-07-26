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
        Log::info('request arrived.');
        $app = app('wechat.official_account');
        $app->server->push(function ($message) {
            switch ($message['MsgType']) {
                case 'event':
                    return $this->doEvent($message);
                    break;
                case 'text':
                    return '收到文字消息';
                    break;
                case 'image':
                    return '收到图片消息';
                    break;
                case 'voice':
                    return '收到语音消息';
                    break;
                case 'video':
                    return '收到视频消息';
                    break;
                case 'location':
                    return '收到坐标消息';
                    break;
                case 'link':
                    return '收到链接消息';
                    break;
                case 'file':
                    return '收到文件消息';
                    break;
                default:
                    return '收到其它消息';
                    break;
            }
        });
        return $app->server->serve();
    }

    public function doEvent($message)
    {
        return $message['Event'];
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
