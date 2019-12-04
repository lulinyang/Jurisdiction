<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redis;
use DB;

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
        $params = $request->all();
        if (!isset($params['type'])) {
            return returnArr(false, 20001, '请选择登录方式！');
        }

        if (!isset($params['username'])) {
            return returnArr(false, 20002, '手机号必填！');
        }
        $user = $this->findBy('username', $params['username']);
        if (!$user) {
            return returnArr(false, 20003, '用户不存在，请先注册！');
        }

        if($user->deleted*1 !== 0) {
            return returnArr(false, 20007, '用户已被禁用！');
        }
        //type: 1、密码登录;2、验证码登录
        if ($params['type'] * 1 === 1) {
            if (!isset($params['password'])) {
                return returnArr(false, 20004, '密码必填！');
            }
            $pwd = Hash::check($params['password'], $user->password);
            if ($pwd) {
                return returnArr($user);
            }
            return returnArr(false, 20005, '密码不正确！');
        } elseif ($params['type'] * 1 === 2) {
            if (!isset($params['code'])) {
                return returnArr(false, 20004, '验证码不能为空！');
            }
            $cache = Redis::get('tel_'.$params['username']);
            if($cache != $params['code']) {
                return returnArr(false, 20008, '验证码错误！');
            }
            Redis::del('tel_'.$params['username']);
            return returnArr($user);
        } else {
            return returnArr(false, 20006, '登录姿势不正确！');
        }
    }

    public function getUser($request)
    {
        $params = $request->all();
        $pageSize = isset($params['pageSize']) ? $params['pageSize'] : 8;
        $username = isset($params['username']) ? $params['username'] : '';
        $name = isset($params['name']) ? $params['name'] : '';
        $email = isset($params['email']) ? $params['email'] : '';
        $paginate = DB::table('cms_user')
                    ->Where('username', 'like', "%{$username}%")
                    ->Where('name', 'like', "{$name}%")
                    ->paginate($pageSize);

        return collection(returnArr($paginate));
    }

    public function addUser($request)
    {
        $params = $request->all();
        if (!isset($params['name'])) {
            return returnArr(false, 20001, '昵称不能为空！');
        }

        if (!isset($params['username'])) {
            return returnArr(false, 20001, '手机号必填！');
        }

        if (!isset($params['code'])) {
            return returnArr(false, 20002, '验证码必填！');
        }

        if (!isset($params['password'])) {
            return returnArr(false, 20003, '登录密码必填！');
        }

        if (!isset($params['reg_pwd'])) {
            return returnArr(false, 20004, '确认密码必填！');
        }

        if ($params['password'] !== $params['reg_pwd']) {
            return returnArr(false, 20005, '两次密码不一致！');
        }
        $user = $this->findBy('username', $params['username']);
        if ($user) {
            return returnArr(false, 20007, '用户名已被注册！');
        }
        $cache = Redis::get('tel_'.$params['username']);
        if($cache != $params['code']) {
            return returnArr(false, 20008, '验证码错误！');
        }
        
        if (!isset($params['headUrl'])) {
            if($params['sex']*1 === 1) {
                $params['headUrl'] ='/uploads/20191118/xDvSCD2yDtqSOVvvZci0r1qESUrL0HQ07ibX9GMN.jpeg';
            }else {
                $params['headUrl'] ='/uploads/20191118/xvj76a7XRFSZSWlacdXOfcveEuCCOO90T0w1YgWQ.jpeg';
            }
        }
        $params['password'] = bcrypt($params['password']);
        $res = $this->create($params);
        if ($res) {
            Redis::del('tel_'.$params['username']);
            return returnArr($res, 200, '注册成功！');
        }

        return returnArr(false, 20006, '注册失败！');
    }

    public function getUserById($request)
    {
        $params = $request->all();
        if (!isset($params['uid'])) {
            return returnArr(false, 20001, '缺少uid！');
        }
        $res = $this->getById($params['uid']);
        if($res) {
            return returnArr($res);
        }
        return returnArr($res, 20002, '没有数据！');
    }

    public function changePassword($request)
    {
        $params = $request->all();
        if (!isset($params['username'])) {
            return returnArr(false, 20001, '手机号不能为空！');
        }

        if (!isset($params['code'])) {
            return returnArr(false, 20002, '验证码不能为空！');
        }

        if (!isset($params['password'])) {
            return returnArr(false, 20003, '登录密码必填！');
        }

        if (!isset($params['reg_pwd'])) {
            return returnArr(false, 20004, '确认密码必填！');
        }

        if ($params['password'] !== $params['reg_pwd']) {
            return returnArr(false, 20005, '两次密码不一致！');
        }

        $cache = Redis::get('tel_'.$params['username']);
        if($cache != $params['code']) {
            return returnArr(false, 20006, '验证码错误！');
        }

        $params['password'] = bcrypt($params['password']);
        $res = $this->update(['password' => $params['password']], $params['username'], 'username');
        if($res) {
            return returnArr($res, 200, '修改成功！');
        }
        
        return returnArr(false, 20007, '修改失败！');
    }

    public function editUserInfo($request)
    {
        $params = $request->all();
        if (!isset($params['uid'])) {
            return returnArr(false, 20001, '缺少uid参数！');
        }

        if (!isset($params['name'])) {
            return returnArr(false, 20002, '昵称不能为空！');
        }
        $arr = [
            'name' => $params['name'],
            'sex' => $params['sex'],
            'headUrl' => $params['headUrl'],
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        if(isset($params['isAuthentication']) && $params['isAuthentication']*1 === 1) {
            if (!isset($params['area_name'])) {
                return returnArr(false, 20006, '所在地必填！');
            }
    
            if (!isset($params['area_code'])) {
                return returnArr(false, 20007, '所在地code必填！');
            }
            
            if (!isset($params['birthday'])) {
                return returnArr(false, 20008, '生日必填！');
            }
    
            if (!isset($params['address'])) {
                return returnArr(false, 20009, '详细地址必填！');
            }
            $arr['area_name'] = $params['area_name'];
            $arr['area_code'] = $params['area_code'];
            $arr['address'] = $params['address'];
            $arr['birthday'] = $params['birthday'];
        }
        $res = $this->update($arr, $params['uid']);
        if($res) {
            $user = $this->getById($params['uid']);
            return returnArr($user, 200, '保存成功！');
        }

        return returnArr($res, 20003, '保存失败！');  
    }

    public function modifyPwd($request)
    {
        $params = $request->all();
        if (!isset($params['uid'])) {
            return returnArr(false, 20001, '缺少uid参数！');
        }

        if (!isset($params['old_pwd'])) {
            return returnArr(false, 20002, '旧密码必填！');
        }

        $user = $this->getById($params['uid']);
        if(!$user) {
            return returnArr(false, 20005, '用户不存在或已被禁用！');
        }

        $pwd = Hash::check($params['old_pwd'], $user->password);
        if (!$pwd) {
            return returnArr(false, 20006, '旧密码不正确！');
        }
        
        if (!isset($params['password'])) {
            return returnArr(false, 20003, '新密码密码必填！');
        }

        if (!isset($params['reg_pwd'])) {
            return returnArr(false, 20004, '确认密码必填！');
        }

        if ($params['password'] !== $params['reg_pwd']) {
            return returnArr(false, 20005, '两次密码不一致！');
        }

        $arr = [
            'password' => bcrypt($params['password']),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $res = $this->update($arr, $params['uid']);
        if($res) {
            return returnArr($res, 200, '修改成功！');
        }
        return returnArr(false, 20006, '修改失败，请稍后再试！');
    }
    
    public function getUserAll($request)
    {
        $params = $request->all();
        $username = isset($params['username']) ? $params['username'] : '';
        $res = DB::table('cms_user')
                    ->Where('username', 'like', "{$username}%")
                    ->Where('deleted', '0')
                    ->get();
        return returnArr($res);
    }

    public function realAuthentication($request)
    {
        $idcardReg = "/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/";
        $emailReg = "/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/";
        $params = $request->all();
        if (!isset($params['uid'])) {
            return returnArr(false, 20000, '你还没有登录！');
        }
        if (!isset($params['realname'])) {
            return returnArr(false, 20001, '真实姓名必填！');
        }

        if (!isset($params['identity_card'])) {
            return returnArr(false, 20002, '身份证号必填！');
        }

        if(!preg_match($idcardReg, $params['identity_card'])) {
            return returnArr(false, 20003, '身份证号不合法！');
        }

        if (!isset($params['email'])) {
            return returnArr(false, 20004, '邮箱必填！');
        }

        if(!preg_match($emailReg, $params['email'])) {
            return returnArr(false, 20005, '邮箱不合法！');
        }

        if (!isset($params['area_name'])) {
            return returnArr(false, 20006, '所在地必填！');
        }

        if (!isset($params['area_code'])) {
            return returnArr(false, 20007, '所在地code必填！');
        }
        
        if (!isset($params['birthday'])) {
            return returnArr(false, 20008, '生日必填！');
        }

        if (!isset($params['address'])) {
            return returnArr(false, 20009, '详细地址必填！');
        }
        $arr = [
            'isAuthentication' => 1,
            'updated_at' => date('Y-m-d H:i:s'),
            'realname' => $params['realname'],
            'identity_card' => $params['identity_card'],
            'email' => $params['email'],
            'area_name' => $params['area_name'],
            'area_code' => $params['area_code'],
            'birthday' => $params['birthday'],
            'address' => $params['address'],
        ];
        
        $res = $this->update($arr, $params['uid']);
        if($res) {
            $user = $this->getById($params['uid']);
            return returnArr($user, 200, '认证成功！');
        }
        return returnArr(false, 20010, '认证失败，请稍后再试！');
    }

    public function findUser($request)
    {
        $params = $request->all();
        if (!isset($params['user_id'])) {
            return returnArr(false, 20001, '缺少user_id！');
        }
        $user = $this->getById($params['user_id']);
        return returnArr($user);
    }
}
