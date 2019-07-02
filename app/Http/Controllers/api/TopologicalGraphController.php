<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\TopologicalGraphRepository as TopologicalGraph;

class TopologicalGraphController extends Controller
{
    private $topologicalGraph;

    public function __construct(TopologicalGraph $topologicalGraph)
    {
        $this->topologicalGraph = $topologicalGraph;
    }

    public function getPedigreeTree(Request $request)
    {
        $result = collect($this->topologicalGraph->getPedigreeTree($request))->toJson();

        return $result;
    }

    public function addPedigree(Request $request)
    {
        $result = collect($this->topologicalGraph->addPedigree($request))->toJson();

        return $result;
    }

    public function getPedigreeAll(Request $request)
    {
        $result = collect($this->topologicalGraph->getPedigreeAll($request))->toJson();

        return $result;
    }

    public function deletePedigree(Request $request)
    {
        $result = collect($this->topologicalGraph->deletePedigree($request))->toJson();

        return $result;
    }

    public function getTreeChart(Request $request)
    {
        $result = collect($this->topologicalGraph->getTreeChart($request))->toJson();

        return $result;
    }
}
