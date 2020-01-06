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

    /**
     * 宗祠申请
     */
    public function applyAncestral(Request $request) 
    {
        return collect($this->ancestral->applyAncestral($request))->toJson(); 
    }

    /**
     * 取消申请
     */
    public function cancelAncestral(Request $request) 
    {
        return collect($this->ancestral->cancelAncestral($request))->toJson(); 
    }

    /**
     * 宗祠列表
     */
    public function getAncestralApp(Request $request) 
    {
        return collect($this->ancestral->getAncestralApp($request))->toJson(); 
    }
    
    /**
     * 获取已经加入的宗祠
     */
    public function getAlreadyAncestral(Request $request) 
    {
        return collect($this->ancestral->getAlreadyAncestral($request))->toJson(); 
    }
    
    /**
     * 获取申请中的宗祠
     */
    public function getApplyAncestral(Request $request) 
    {
        return collect($this->ancestral->getApplyAncestral($request))->toJson(); 
    }

    /**
     * 宗祠详情
     */
    public function getAncestralInfo(Request $request) 
    {
        return collect($this->ancestral->getAncestralInfo($request))->toJson(); 
    }
    
    /**
     * 得到全部宗祠
     */
    public function getAncestralAll(Request $request) 
    {
        return collect($this->ancestral->getAncestralAll($request))->toJson(); 
    }

    /**
     * 添加公告
     */
    public function addNotice(Request $request) 
    {
        return collect($this->ancestral->addNotice($request))->toJson(); 
    }
    /**
     * 公告列表
     */
    public function getNoticeList(Request $request) 
    {
        return collect($this->ancestral->getNoticeList($request))->toJson(); 
    }
    
    /**
     * 编辑公告
     */
    public function editNotice(Request $request) 
    {
        return collect($this->ancestral->editNotice($request))->toJson(); 
    }

    /**
     * 删除公告
     */
    public function delNotice(Request $request) 
    {
        return collect($this->ancestral->delNotice($request))->toJson(); 
    }

    /**
     * 发起投票
     */
    public function addVote(Request $request) 
    {
        return collect($this->ancestral->addVote($request))->toJson(); 
    }
    
    /**
     * 获取投票列表
     */
    public function getVoteList(Request $request) 
    {
        return collect($this->ancestral->getVoteList($request))->toJson(); 
    }

    /**
     * 获取投票内容
     */
    public function getVoteItem(Request $request) 
    {
        return collect($this->ancestral->getVoteItem($request))->toJson(); 
    }

    /**
     * 投票
     */
    public function activeVoteItem(Request $request) 
    {
        return collect($this->ancestral->activeVoteItem($request))->toJson(); 
    }

    /**
     * 最新公告
     */
    public function getNoticeNew(Request $request) 
    {
        return collect($this->ancestral->getNoticeNew($request))->toJson(); 
    }

    /**
     * 保存宗祠建议内容
     */
    public function saveProposal(Request $request) 
    {
        return collect($this->ancestral->saveProposal($request))->toJson(); 
    }

    /**
     * 获取宗祠建议内容
     */
    public function getProposalList(Request $request) 
    {
        return collect($this->ancestral->getProposalList($request))->toJson(); 
    }

    /**
     * 获取宗祠的文件列表
     */
    public function getAncestralFileList(Request $request) 
    {
        return collect($this->ancestral->getAncestralFileList($request))->toJson(); 
    }

    /**
     * 获取我的宗祠
     */
    public function getMyAncestral(Request $request) 
    {
        return collect($this->ancestral->getAlreadyAncestral($request))->toJson(); 
    }
    
}
