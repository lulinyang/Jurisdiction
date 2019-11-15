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
     * 修改密码
     */
    public function changePassword(Request $request)
    {
        return collect($this->user->changePassword($request))->toJson();
    }
}
