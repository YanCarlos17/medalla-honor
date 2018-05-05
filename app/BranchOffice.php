<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BranchOffice extends Model
{
    protected $table = 'branchoffice';

    public $timestamps = false;

    // Relaciones
    public function distributor()
    {
        return $this->belongsTo('App\User', 'distributor_id', 'id');
    }

    public function scoreEfectivity(){
        return $this->hasOne('App\Score', 'branchoffice_id', 'id')->where('measuring_id',1);
    }
    public function scoreAssortment(){
        return $this->hasOne('App\Score', 'branchoffice_id', 'id')->where('measuring_id',2);
    }
    public function scoreMovement(){
        return $this->hasOne('App\Score', 'branchoffice_id', 'id')->where('measuring_id',3);
    }
    public function scoreCodification(){
        return $this->hasOne('App\Score', 'branchoffice_id', 'id')->where('measuring_id',4);
    }
    public function scoreSpecialPlans(){
        return $this->hasOne('App\Score', 'branchoffice_id', 'id')->where('measuring_id',5);
    }
    public function scoreITT(){
        return $this->hasOne('App\Score', 'branchoffice_id', 'id')->where('measuring_id',6);
    }
}
