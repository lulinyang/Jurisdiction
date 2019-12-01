<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\AncestralRepository as Ancestral;

class AncestralController extends Controller
{
    private $ancestral;

    public function __construct(Ancestral $ancestral)
    {
        $this->ancestral = $ancestral;
    }

    public function addAncestral(Request $request) 
    {
        return collect($this->ancestral->addAncestral($request))->toJson(); 
    }

    public function getAncestral(Request $request) 
    {
        return collect($this->ancestral->getAncestral($request))->toJson(); 
    }
    
    public function getAncestralById(Request $request) 
    {
        return collect($this->ancestral->getAncestralById($request))->toJson(); 
    }

    public function delAncestral(Request $request) 
    {
        return collect($this->ancestral->delAncestral($request))->toJson(); 
    }
    
}
