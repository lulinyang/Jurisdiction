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

    public function upImage(Request $request)
    {
        if (!$request->hasFile('img')) {
            $result = ['res' => false, 'msg' => '文件不存在'];
        } else {
            $img = $request->file('img');
            // 获取后缀名
            $ext = $img->extension();
            // 新文件名
            $saveName = time().rand().'.'.$ext;
            // 使用 store 存储文件
            $path = $img->store(date('Ymd'));

            $result = ['res' => (bool) $path, 'url' => '\/uploads\/'.$path];
        }

        return collect(collection($result))->toJson();
    }


    public function upOssImage(Request $request)
    {
        if (!$request->hasFile('img')) {
            $result = ['res' => false, 'msg' => '文件不存在'];
        } else {
            $img = $request->file('img');
            // 判断图片有效性
            if (!$img->isValid()) {
                return back()->withErrors('上传图片无效..');
            }
            // 获取图片在临时文件中的地址
            $pic = $img->getRealPath();
            // 制作文件名
            $key = date('Ymd') .'/'. time() . rand(10000, 99999999) . '.jpg';
            //阿里 OSS 图片上传
            $result = OSS::upload($key, $pic);
            $url = OSS::getUrl($key);
            if($url) {
                $url = explode('?', $url)[0];
                $result = ['url' => $url, 'res' => true, 'msg' => '上传成功！'];
            }else {
                $result = ['res' => false, 'msg' => '上传失败！'];
            }
            
        }
        return collect(collection($result))->toJson();
    }
}
