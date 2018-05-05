<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user', 'access_code', 'name', 'email', 'city_id', 'branch_offices', 'total_score',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'access_code', 'password'
    ];

    protected $table = 'distributor';


    public $timestamps = false;

    // Relaciones
    public function branchoffices()
    {
        return $this->hasMany('App\BranchOffice','distributor_id','id');
    }

}
