<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Permissions extends Model
{
    protected $table = 'cms_permissions';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name', 'router', 'icon', 'index', 'router_web', 'description', 'pid', 'level', 'top', 'deleted', 'created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
