<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\RoleRepository as Role;

class RoleController extends Controller
{
    private $role;

    public function __construct(Role $role)
    {
        $this->role = $role;
    }

    public function getRoles(Request $request)
    {
        $result = collect($this->role->getRoles($request))->toJson();

        return $result;
    }

    public function getRolesAll(Request $request)
    {
        $result = collect($this->role->getRolesAll($request))->toJson();

        return $result;
    }

    public function addRole(Request $request)
    {
        $result = collect($this->role->addRole($request))->toJson();

        return $result;
    }
}
