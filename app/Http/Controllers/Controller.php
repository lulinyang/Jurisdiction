<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use App\Service\OSS;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function upEditImage(Request $request)
    {
        if (!$request->hasFile('file')) {
            return returnApi(null, 20001, '文件不存在！');
        } else {
            $img = $request->file('file');
            // 获取后缀名
            $ext = $img->extension();
            // 新文件名
            $saveName = time().rand().'.'.$ext;
            // 使用 store 存储文件
            $path = $img->store(date('Ymd'));

            return returnApi('\/uploads\/'.$path);
        }
    }

    public function upOssImage(Request $request)
    {
        if (!$request->hasFile('img')) {
            $result = ['res' => false, 'msg' => '文件不存在', 'code' => 20004];
        } else {
            $img = $request->file('img');
            // 获取后缀名
            $ext = $img->getClientOriginalExtension();
            // 判断图片有效性
            if (!$img->isValid()) {
                return back()->withErrors('上传图片无效..');
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
                $result = ['url' => $url, 'res' => true, 'msg' => '上传成功！', 'code' => 200];
            } else {
                $result = ['res' => false, 'msg' => '上传失败！', 'code' => 20001];
            }
        }

        return collect(collection($result))->toJson();
    }

    public function aipSpeechTest(Request $request)
    {
        $appId = getenv('AIP_APP_ID');
        $key = getenv('AIP_API_KEY');
        $secret = getenv('AIP_SECRET_KEY');
        $client = new \AipSpeech($appId, $key, $secret);
        $result = $client->asr(file_get_contents('http://lulinyang.oss-cn-beijing.aliyuncs.com/20190912%2F156827284524431444.mp3'), 'pcm', 16000, array(
            'dev_pid' => 1536,
        ));

        return returnApi($result);
    }

    public function upOssAudio(Request $request)
    {
        // return returnApi($request);
        if (!$request->hasFile('audio')) {
            return returnApi(false, 20004, '文件不存在');
        } else {
            $audio = $request->file('audio');
            // return returnApi($audio->getClientOriginalExtension());
            // 获取后缀名
            $ext = $audio->getClientOriginalExtension();
            // 判断图片有效性
            if (!$audio->isValid()) {
                return back()->withErrors('音频上传无效..');
            }
            // 获取图片在临时文件中的地址
            $au = $audio->getRealPath();
            // 制作文件名
            $key = date('Ymd').'/'.time().rand(10000, 99999999).'.'.$ext;
            //阿里 OSS 图片上传
            $result = OSS::upload($key, $au);
            $url = OSS::getUrl($key);
            if ($url) {
                $url = explode('?', $url)[0];

                return returnApi($url);
                $result = ['url' => $url, 'res' => true, 'msg' => '上传成功！', 'code' => 200];
            } else {
                return returnApi(false, 20004, '上传失败！');
            }
        }
    }
}
