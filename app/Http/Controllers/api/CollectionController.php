<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\CollectionRepository as Collection;

class CollectionController extends Controller
{
    private $collection;

    public function __construct(Collection $collection)
    {
        $this->collection = $collection;
    }

    public function saveCollection(Request $request)
    {
        return collect($this->collection->saveCollection($request))->toJson();
    }

    public function cancelCollection(Request $request)
    {
        return collect($this->collection->cancelCollection($request))->toJson();
    }
    
}
