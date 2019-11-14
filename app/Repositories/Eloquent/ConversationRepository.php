<?php
declare(strict_types=1);
namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;
 
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

	public function getConversationList($request)
	{
		$data = $request->all();
		$pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
		$paginate = DB::table('cms_conversation as c')
                    ->leftjoin('cms_user as u', function ($join) {
                        $join->on('c.uid', '=', 'u.id');
					})
					->Where('c.deleted', '=', '0')
					->Where('u.deleted', '=', '0')
					->paginate($pageSize);
        // $title = isset($data['title']) ? $data['title'] : '';
        // $pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
        // $describe = isset($data['describe']) ? $data['describe'] : '';
        // $create_user = isset($data['create_user']) ? $data['create_user'] : '';
        // $paginate = DB::table('cms_article as a')
        //             ->leftjoin('cms_column as c', function ($join) {
        //                 $join->on('a.type', '=', 'c.id');
        //             })->paginate($pageSize);

        return collection(returnArr($paginate));
	}
}