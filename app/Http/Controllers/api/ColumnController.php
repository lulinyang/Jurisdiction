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

    /**
     * 用户列表.
     */
    public function addColumn(Request $request)
    {
        $result = collect($this->column->addColumn($request))->toJson();

        return $result;
    }

}
