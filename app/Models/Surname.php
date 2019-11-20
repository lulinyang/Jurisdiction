<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Surname extends Model
{
    protected $table = 'cms_surname';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'area_surname', 'thumbnail', 'describe', 'brief_introduction', 'user_id', 'username', 'orgname',
        'orgcode', 'deleted', 'browse_volume', 'created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
