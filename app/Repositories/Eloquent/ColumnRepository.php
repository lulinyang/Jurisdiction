<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
 
class ColumnRepository extends Repository
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
		return 'App\\Models\\Column';
	 }
	//  $password = \Auth::guard('customer')->user()->password;
	public function addColumn($request)
	{
		$data = $request->all();
		if(!isset($data['name'])) {
			return $this->respondWith(['created' => false, 'updated' => false, 'message' => '分类名必填！']);
		}
		$data['create_user'] = \Auth::guard('customer')->user()->username;
		if(!isset($data['id'])) {
			try{
				$res = $this->create($data);
			}catch (\Exception $e) {  
				return $this->respondWith(['created' => false, 'message' => '分类名重复！']);
			}  
			return $this->respondWith(['created' => (bool) $res, 'column' => $res]);
		}else {
			try{
				$res = $this->update($data, $data['id']);
			}catch (\Exception $e) {  
				return $this->respondWith(['updated' => false, 'message' => '分类名重复！']);
			}  
			return $this->respondWith(['updated' => (bool) $res, 'column' => $res]);
		}
	}



}