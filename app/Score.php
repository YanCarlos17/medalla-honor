<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
    protected $table = 'score';

    protected $primaryKey = 'id';

    // Relaciones
    public function branchoffice()
    {
        return $this->belongsTo('App\BranchOffice','branchoffice_id', 'id');
    }
}
