<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Fabulous extends Model
{
    protected $table = 'cms_fabulous';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'type',  'theme_id', 'uid', 'created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
