<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\UserRepository as User;

class UserController extends Controller
{
    private $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }

    /**
     * 用户登录.
     */
    public function login(Request $request)
    {
        return collect($this->user->login($request))->toJson();
    }
    /**
     * 用户信息
     */
    public function getUserById(Request $request)
    {
        return collect($this->user->getUserById($request))->toJson(); 
    }

    /**
     * 用户列表.
     */
    public function getUser(Request $request)
    {
        return collect($this->user->getUser($request))->toJson();
    }

    /**
     * 添加用户.
     */
    public function addUser(Request $request)
    {
        return collect($this->user->addUser($request))->toJson();
    }

    /**
     * 忘记密码
     */
    public function changePassword(Request $request)
    {
        return collect($this->user->changePassword($request))->toJson();
    }
    /**
     * 编辑用户信息
     */
    public function editUserInfo(Request $request)
    {
        return collect($this->user->editUserInfo($request))->toJson();
    }

    public function modifyPwd(Request $request)
    {
        return collect($this->user->modifyPwd($request))->toJson();
    }

     /**
     * 根据用户名得到用户列表.
     */
    public function getUserAll(Request $request)
    {
        return collect($this->user->getUserAll($request))->toJson();
    }

    /**
     * 实名认证
     */
    public function realAuthentication(Request $request)
    {
        return collect($this->user->realAuthentication($request))->toJson();
    }

    /**
     * 个人信息
     */
    public function findUser(Request $request)
    {
        return collect($this->user->findUser($request))->toJson();
    }

    /**
     * 关注
     */
    public function followUser(Request $request)
    {
        return collect($this->user->followUser($request))->toJson();
    }
    
    /**
     * 取消关注
     */
    public function removeConcerns(Request $request)
    {
        return collect($this->user->removeConcerns($request))->toJson();
    }

    /**
     * 获取关注未读数
     */
    public function getUnread(Request $request)
    {
        return collect($this->user->getUnread($request))->toJson();
    }
    
    /**
     * 获取关注列表 
     */
    public function getFollowList(Request $request)
    {
        return collect($this->user->getFollowList($request))->toJson();
    }
    
    /**
     * 关注列表的提示消息
     */
    public function getFollowListMessage(Request $request)
    {
        return collect($this->user->getFollowListMessage($request))->toJson();
    }
    
}
