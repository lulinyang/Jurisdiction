<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redis;

class UserRepository extends Repository
{
    public function __construct(Client $http, App $app)
    {
        parent::__construct($app);
        $this->http = $http;
    }

    /**
     * Specify Model class name.
     *
     * @return string
     */
    public function model()
    {
        //set model name in here, this is necessary!
        return 'App\\User';
    }

    public function login($request)
    {
        $data = $request->all();
        if (!isset($data['type'])) {
            return returnArr(false, 20001, '请选择登录方式！');
        }

        if (!isset($data['username'])) {
            return returnArr(false, 20002, '手机号必填！');
        }
        $user = $this->findBy('username', $data['username']);
        if (!$user) {
            return returnArr(false, 20003, '用户不存在，请先注册！');
        }
        //type: 1、密码登录;2、验证码登录
        if ($data['type'] * 1 === 1) {
            if (!isset($data['password'])) {
                return returnArr(false, 20004, '密码必填！');
            }
            $pwd = Hash::check($data['password'], $user->password);
            if ($pwd) {
                return returnArr($user);
            }
            return returnArr(false, 20005, '密码不正确！');
        } elseif ($data['type'] * 1 === 2) {
            if (!isset($data['code'])) {
                return returnArr(false, 20004, '验证码不能为空！');
            }
            $cache = Redis::get('tel_'.$data['username']);
            if($cache != $data['code']) {
                return returnArr(false, 20008, '验证码错误！');
            }
            Redis::del('tel_'.$data['username']);
            return returnArr($user);
        } else {
            return returnArr(false, 20006, '登录姿势不正确！');
        }
    }

    public function getUser($request)
    {
        $data = $request->all();
        dd(1122);
    }

    public function addUser($request)
    {
        $data = $request->all();
        if (!isset($data['username'])) {
            return returnArr(false, 20001, '手机号必填！');
        }

        if (!isset($data['code'])) {
            return returnArr(false, 20002, '验证码必填！');
        }

        if (!isset($data['password'])) {
            return returnArr(false, 20003, '登录密码必填！');
        }

        if (!isset($data['reg_pwd'])) {
            return returnArr(false, 20004, '确认密码必填！');
        }

        if ($data['password'] !== $data['reg_pwd']) {
            return returnArr(false, 20005, '两次密码不一致！');
        }
        $user = $this->findBy('username', $data['username']);
        if ($user) {
            return returnArr(false, 20007, '用户名已被注册！');
        }
        $cache = Redis::get('tel_'.$data['username']);
        if($cache != $data['code']) {
            return returnArr(false, 20008, '验证码错误！');
        }
        $data['password'] = bcrypt($data['password']);
        $data['name'] = $data['username'];
        $res = $this->create($data);
        if ($res) {
            Redis::del('tel_'.$data['username']);
            return returnArr($res, 200, '注册成功！');
        }

        return returnArr(false, 20006, '注册失败！');
    }

    public function getUserById($request)
    {
        $data = $request->all();
        if (!isset($data['uid'])) {
            return returnArr(false, 20001, '缺少uid！');
        }
        $res = $this->find($data['uid']);
        if($res) {
            return returnArr($res);
        }
        return returnArr($res, 20002, '没有数据！');
    }
}
