<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\ColumnRepository as Column;

class ColumnController extends Controller
{
    private $column;

    public function __construct(Column $column)
    {
        $this->column = $column;
    }

    public function addColumn(Request $request)
    {
        $result = collect($this->column->addColumn($request))->toJson();

        return $result;
    }

    public function delColumn(Request $request)
    {
        $result = collect($this->column->delColumn($request))->toJson();

        return $result;
    }

    public function getColumnList(Request $request)
    {
        $result = collect($this->column->getColumnList($request))->toJson();

        return $result;
    }
}
