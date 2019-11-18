<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
 
class FabulousRepository extends Repository
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
		return 'App\\Models\\Fabulous';
	 }

	 public function saveFabulous($request)
	 {
		$params = $request->all();
		if(!isset($params['uid'])) {
			return returnArr(false, 20001, '请先登录！');
		}

		if (!isset($params['type'])) {
            return returnArr(false, 20002, '缺少type参数！');
		}
		
		if (!isset($params['theme_id'])) {
            return returnArr(false, 20003, '缺少theme_id参数！');
		}
	
		$res = $this->create($params);
		if($res) {
			return returnArr($res, 200, '点赞成功！');
		}
		return returnArr($res, 20004, '点赞失败！');
	}

	// public function isFabulous($request) 
	// {
	// 	$params = $request->all();
	// 	dd($params);
	// }
}