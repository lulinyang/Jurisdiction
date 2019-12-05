<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\ChatRepository as Chat;

class ChatController extends Controller
{
    private $chat;

    public function __construct(Chat $chat)
    {
        $this->chat = $chat;
    }

    public function saveChat(Request $request) 
    {
        return collect($this->chat->saveChat($request))->toJson(); 
    }
    
    public function getPrivateLetterList(Request $request) 
    {
        return collect($this->chat->getPrivateLetterList($request))->toJson(); 
    }
}
