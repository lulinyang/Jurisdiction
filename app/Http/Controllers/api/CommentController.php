<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Eloquent\CommentRepository as Comment;

class CommentController extends Controller
{
    private $comment;

    public function __construct(Comment $comment)
    {
        $this->comment = $comment;
    }

    public function saveComment(Request $request)
    {
        return collect($this->comment->saveComment($request))->toJson();
    }

    public function getComment(Request $request) 
    {
        return collect($this->comment->getComment($request))->toJson();
    }

    /**
     * 删除评论
     */
    public function delComment(Request $request)
    {
        $result = collect($this->comment->delComment($request))->toJson();

        return $result;
    }
}
