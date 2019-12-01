<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\CelebrityRepository as Celebrity;

class CelebrityController extends Controller
{
    private $celebrity;

    public function __construct(Celebrity $celebrity)
    {
        $this->celebrity = $celebrity;
    }
    
    public function addCelebrity(Request $request) 
    {
        return collect($this->celebrity->addCelebrity($request))->toJson(); 
    }
    
    public function getCelebrity(Request $request) 
    {
        return collect($this->celebrity->getCelebrity($request))->toJson(); 
    }
    
    public function getCelebrityById(Request $request) 
    {
        return collect($this->celebrity->getCelebrityById($request))->toJson(); 
    }

    public function delCelebrity(Request $request) 
    {
        return collect($this->celebrity->delCelebrity($request))->toJson(); 
    }
}
