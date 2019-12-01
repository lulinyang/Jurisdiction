<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ancestral extends Model
{
    protected $table = 'cms_ancestral_hall';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name', 'banners', 'describe', 'administrators', 'genealogy', 'deleted', 'created_user', 'created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
