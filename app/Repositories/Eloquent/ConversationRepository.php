<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
 
class ConversationRepository extends Repository
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
		return 'App\\Models\\Conversation';
	}

	public function pushConversation($request)
	{
		$data = $request->all();
		if (!isset($data['uid'])) {
            return returnArr(false, 20001, '为获取到uid！');
		}
		// dd(!$data['imgs']);
		if ((isset($data['content']) && $data['content']) || (isset($data['imgs']) && $data['imgs'])) {
			$res = $this->create($data);
			if($res) {
				return returnArr($res, 200, "发布成功");
			}
			return returnArr(false, 20002, "发布失败");
        }else {
			return returnArr(false, 20003, '图片和内容不能同时为空');
		}
		
	}
}