<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\MemberRepository as Member;

class MemberController extends Controller
{
    private $member;

    public function __construct(Member $member)
    {
        $this->member = $member;
    }

    public function getMemberList(Request $request)
    {
        $result = collect($this->member->getMemberList($request))->toJson();

        return $result;
    }

    public function addMember(Request $request)
    {
        $result = collect($this->member->addMember($request))->toJson();

        return $result;
    }

    public function getMember(Request $request)
    {
        $result = collect($this->member->getMember($request))->toJson();

        return $result;
    }

    public function deleteMember(Request $request)
    {
        $result = collect($this->member->deleteMember($request))->toJson();

        return $result;
    }
}
