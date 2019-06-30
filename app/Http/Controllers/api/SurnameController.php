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
}
