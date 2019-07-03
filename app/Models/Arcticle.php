<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Arcticle extends Model
{
    protected $table = 'cms_article';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'title', 'thumbnail', 'type', 'describe', 'content', 'fabulous_num', 'browse_num', 'recommend', 'top',
        'deleted', 'create_user', 'update_user', 'created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
