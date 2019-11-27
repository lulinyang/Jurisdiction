<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;
 
class SettingRepository extends Repository
{
  
 	public function __construct(Client $http, App $app)
    {
        parent::__construct($app);
        $this->http = $http;
    }
	 /**
	  * Specify Model class name
	  * 
	  * @return string
	  */
	public function model()
	{
		//set model name in here, this is necessary!
		return 'App\\Models\\Setting';
	}

	public function addBanner($request)
	{
		$params = $request->all();
		if (!isset($params['banners'])) {
            return returnArr(false, 20001, '数据格式不正确');
        }
		if(count($params['banners']) > 0) {
			DB::table('cms_banner')->truncate();
			$arr = [];
			$updateArr = [];
			foreach($params['banners'] as $key => $val) {
				$val['isLink'] = isset($val['isLink']) ? $val['isLink'] : 0;
				$val['link'] = isset($val['link']) ? $val['link'] : "";
				$val['deleted'] = isset($val['deleted']) ? $val['deleted'] : 0;
				$arrItem = [
					'imgUrl' => $val['imgUrl'], 
					'isLink' => $val['isLink'], 
					'deleted' => $val['deleted'],
					'link' => $val['link'],
					'created_at' =>  date('Y-m-d H:i:s')
				];
				$arr[] = $arrItem;
			}
			$res = DB::table('cms_banner')->insert($arr);
			if($res) {
				return returnArr($res, 200, '保存成功！');
			}else {
				return returnArr($res, 20002, '保存失败！');
			}
			
		}else {
			return returnArr(false, 20003, '数据格式不正确');
		}
	}

	public function getBanner($request)
	{
		// $params = $request->all();
		$res = DB::table('cms_banner')->get();
		return returnArr($res);
	}

	public function addMenu($request) 
	{
		$params = $request->all();
		if (!isset($params['menus'])) {
            return returnArr(false, 20001, '数据格式不正确');
        }
		if(count($params['menus']) > 0) {
			DB::table('cms_home_menu')->truncate();
			$arr = [];
			$updateArr = [];
			foreach($params['menus'] as $key => $val) {
				$val['deleted'] = isset($val['deleted']) ? $val['deleted'] : 0;
				$arrItem = [
					'name' => $val['name'],
					'router' => $val['router'],
					'icon' => $val['icon'], 
					'deleted' => $val['deleted'],
					'created_at' =>  date('Y-m-d H:i:s')
				];
				$arr[] = $arrItem;
			}
			$res = DB::table('cms_home_menu')->insert($arr);
			if($res) {
				return returnArr($res, 200, '保存成功！');
			}else {
				return returnArr($res, 20002, '保存失败！');
			}
			
		}else {
			return returnArr(false, 20003, '数据格式不正确');
		}
	}

	public function getMenu($request)
	{
		// $params = $request->all();
		$res = DB::table('cms_home_menu')->get();
		return returnArr($res);
	}


	public function delBanner($request)
	{
		$params = $request->all();
		if (!isset($params['id'])) {
            return returnArr(false, 20001, '缺少ID参数');
        }
		$res = DB::table('cms_banner')->where('id', $params['id'])->delete();
		if($res) {
			return returnArr($res, 200, '删除成功！');
		}else {
			return returnArr($res, 20002, '删除失败！');
		}
	}
}