<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use Illuminate\Support\Facades\Hash;
use DB;

class CustomerRepository extends Repository
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
        return 'App\\Customer';
    }

    public function getUserList($request)
    {
        $data = $request->all();
        $pageSize = isset($data['pageSize']) ? $data['pageSize'] : 8;
        $orgcode = \Auth::guard('customer')->user()->orgcode;
        $username = isset($data['username']) ? $data['username'] : '';
        $email = isset($data['email']) ? $data['email'] : '';
        $paginate = DB::table('cms_customer as c')
                    ->leftJoin('cms_roles as r', function ($join) {
                        $join->on('c.role_id', '=', 'r.id');
                    })->Where('username', 'like', "%{$username}%")
                    ->Where('email', 'like', "%{$email}%")
                    ->Where('orgcode', 'like', "{$orgcode}%")
                    ->select('c.*', 'r.name as rolen_ame')
                    ->paginate($pageSize);

        return collection($paginate);
    }

    public function saveUser($request)
    {
        $data = $request->all();
        $username = isset($data['username']) ? $data['username'] : '';
        $email = isset($data['email']) ? $data['email'] : '';
        $res = $this->findBy('username', $username);
        $res_email = $this->findBy('email', $email);
        if (!isset($data['id'])) {
            //新增
            if ($res) {
                return $this->respondWith(['find' => (bool) $res, 'message' => '用户名重复！']);
            }
            if ($res_email) {
                return $this->respondWith(['find' => (bool) $res_email, 'message' => '邮箱重复！']);
            }
            $user = \Auth::guard('customer')->user();
            $orgcode = $user->orgcode;
            $result = $this->createOrgcode($orgcode);
            $data['password'] = bcrypt($data['password']);
            $data['orgcode'] = $result['orgcode'];
            $data['orgroot'] = $orgcode;
            $data['role_id'] = isset($data['role_id']) ? $data['role_id'] : $user->role_id;
            DB::beginTransaction();
            try {
                $res = $this->model->create($data);
                DB::table('cms_orgcode')->where('orgcode', $orgcode)->update(['orgnum' => $result['orgnum']]);
                DB::table('cms_orgcode')->insert(['orgnum' => 0, 'orgcode' => $data['orgcode']]);
                DB::commit();
            } catch (\Exception $e) {
                DB::rollBack();
            }

            return $this->respondWith(['created' => (bool) $res, 'user' => $res]);
        } else {
            if ($res_email && $res_email['id'] != $data['id']) {
                return $this->respondWith(['find' => (bool) $res_email, 'message' => '邮箱重复！']);
            }
            // headUrl
            // tel

            $oldpwd = isset($data['oldpwd']) ? $data['oldpwd'] : '';
            if (!$oldpwd) {
                $arr = [
                    'role_id' => $data['role_id'],
                    'orgname' => $data['orgname'],
                    'headUrl' => $data['headUrl'],
                    'tel' => $data['tel'],
                ];
                $res = $this->update($arr, $data['id']);

                return $this->respondWith(['updated' => (bool) $res, 'user' => $res]);
            } else {
                $password = \Auth::guard('customer')->user()->password;
                if (!Hash::check($data['oldpwd'], $password)) {
                    return $this->respondWith(['find' => true, 'message' => '原始密码不正确！']);
                }
                $arr['password'] = bcrypt($data['newpwd']);
                $res = $this->update($arr, $data['id']);

                return $this->respondWith(['updatepwd' => (bool) $res, 'newpwd' => $res]);
            }
        }
    }

    public function getUserInfo($request)
    {
        $data = [
            'login_at' => date('Y-m-d H:i:s', time()),
            'login_ip' => get_client_ip(),
        ];
        $user = \Auth::guard('customer')->user();
        $id = $user->id;
        $roleId = $user->role_id;
        $role = DB::table('cms_roles')->where('id', $roleId)->first();
        $user->role = $role;
        $this->model::where('id', $id)->update($data);

        return collection($user);
    }

    public function deleteUser($request)
    {
        $data = $request->all();
        $orgcode = \Auth::guard('customer')->user()->orgcode;
        if (strlen($data['orgcode']) <= strlen($orgcode)) {
            return collection(['result' => false, 'message' => '没有权限删除！']);
        }
        $res = $this->delete($data['id']);
        $msg = $res ? '删除成功！' : '删除失败！';

        return collection(['result' => (bool) $res, 'message' => $msg]);
    }

    public function createOrgcode($orgcode)
    {
        $res = DB::table('cms_orgcode')->where('orgcode', $orgcode)->first();
        $num = $res->orgnum + 1;
        if ($num > (36 * 36 - 1)) {
            return false;
        }
        $orgnum = $orgcode.enid($num);

        return ['orgcode' => $orgnum, 'orgnum' => $num];
    }
}
