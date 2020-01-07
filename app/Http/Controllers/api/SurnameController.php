<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\SurnameRepository as Surname;

class SurnameController extends Controller
{
    private $surname;

    public function __construct(Surname $surname)
    {
        $this->surname = $surname;
    }

    public function addGenealogy(Request $request)
    {
        $result = collect($this->surname->addGenealogy($request))->toJson();

        return $result;
    }

    public function getGenealogyList(Request $request)
    {
        $result = collect($this->surname->getGenealogyList($request))->toJson();

        return $result;
    }

    public function getGenealogy(Request $request)
    {
        $result = collect($this->surname->getGenealogy($request))->toJson();

        return $result;
    }

    public function deleteGenealogy(Request $request)
    {
        $result = collect($this->surname->deleteGenealogy($request))->toJson();

        return $result;
    }

    public function addBrowseNum(Request $request)
    {
        $result = collect($this->surname->addBrowseNum($request))->toJson();

        return $result;
    }

    public function getSurnameAll(Request $request)
    {
        $result = collect($this->surname->getSurnameAll($request))->toJson();

        return $result;
    }

    /**
     * 申请族谱
     */
    public function applySurname(Request $request)
    {
        $result = collect($this->surname->applySurname($request))->toJson();

        return $result;
    }

    /**
     * 获取审核的族谱列表
     */
    public function getAuditingSurname(Request $request)
    {
        $result = collect($this->surname->getAuditingSurname($request))->toJson();

        return $result;
    }

}
