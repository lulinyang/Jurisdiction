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
}
