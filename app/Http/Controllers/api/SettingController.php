<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\SettingRepository as Setting;

class SettingController extends Controller
{
    private $setting;

    public function __construct(Setting $setting)
    {
        $this->setting = $setting;
    }

    public function addBanner(Request $request)
    {
        return collect($this->setting->addBanner($request))->toJson();
    }

    public function getBanner(Request $request)
    {
        return collect($this->setting->getBanner($request))->toJson();
    }

    public function delBanner(Request $request)
    {
        return collect($this->setting->delBanner($request))->toJson();
    }
    
    public function addMenu(Request $request)
    {
        return collect($this->setting->addMenu($request))->toJson();
    }

    public function getMenu(Request $request)
    {
        return collect($this->setting->getMenu($request))->toJson();
    }

    
}
