<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Celebrity extends Model
{
    protected $table = 'cms_celebrity';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name', 'name_word', 'address', 'tag', 'describe', 'content', 'deleted', 'created_user', 'thumbnail', 'created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
