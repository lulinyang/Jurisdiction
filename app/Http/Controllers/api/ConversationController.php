<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\ConversationRepository as Conversation;

class ConversationController extends Controller
{
    private $conversation;

    public function __construct(Conversation $conversation)
    {
        $this->conversation = $conversation;
    }
    
    public function pushConversation(Request $request)
    {
        return collect($this->conversation->pushConversation($request))->toJson();
    }

    public function getConversationList(Request $request)
    {
        return collect($this->conversation->getConversationList($request))->toJson();
    }

    public function addBrowseNum(Request $request)
    {
        $result = collect($this->conversation->addBrowseNum($request))->toJson();

        return $result;
    }

    public function getConversationById(Request $request)
    {
        $result = collect($this->conversation->getConversationById($request))->toJson();

        return $result;
    }

    /**
     * 删除话题
     */
    public function delConversationList(Request $request)
    {
        $result = collect($this->conversation->delConversationList($request))->toJson();

        return $result;
    }

    /**
     * 获取我的话题
     */
    public function getMyTopic(Request $request)
    {
        $result = collect($this->conversation->getMyTopic($request))->toJson();

        return $result;
    }
    
}
