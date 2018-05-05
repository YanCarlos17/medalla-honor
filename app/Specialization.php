<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Specialization extends Model
{
    protected $table = 'specialization';

    protected $primaryKey = 'id';

    // Relaciones
    public function distributors()
    {
        return $this->belongsToMany('App\User','distrib_specialization','distrib_id','specialization_id');
    }
}
