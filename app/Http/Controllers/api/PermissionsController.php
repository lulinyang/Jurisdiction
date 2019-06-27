<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\PermissionsRepository as Permissions;

class PermissionsController extends Controller
{
    private $permissions;

    public function __construct(Permissions $permissions)
    {
        $this->permissions = $permissions;
    }

    public function getNodes(Request $request)
    {
        $result = collect($this->permissions->getNodes($request))->toJson();

        return $result;
    }

    public function getNodesAll(Request $request)
    {
        $result = collect($this->permissions->getNodesAll($request))->toJson();

        return $result;
    }

    public function getNodesGetTree(Request $request)
    {
        $result = collect($this->permissions->getNodesGetTree($request))->toJson();

        return $result;
    }

    public function addNode(Request $request)
    {
        $result = collect($this->permissions->addNode($request))->toJson();

        return $result;
    }

    public function deleteNode(Request $request)
    {
        $result = collect($this->permissions->deleteNode($request))->toJson();

        return $result;
    }
}
