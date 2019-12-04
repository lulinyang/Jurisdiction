<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;
    protected $table = 'cms_user';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'username', 'name', 'password', 'deleted', 'sex', 'headUrl', 'realname', 'identity_card', 'email', 'area_name', 'area_code', 'birthday', 'address', 'isAuthentication', 'autograph', 'ancestral_id','created_at', 'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];

    // public static function findForPassport($username)
    // {
    //     return self::where('name', $username)->first();
    // }
}
