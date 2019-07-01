<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TopologicalGraph extends Model
{
    protected $table = 'cms_topological_graph';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'title', 'surname_id', 'pid', 'level', 'member_id', 'mate_id', 'top', 'sort', 'top', 'created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
