<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = 'city';
    protected $primaryKey = 'id';

    // Retorna Vista "Profile"
    public function showCity(){
        return view('profile')
        ->width( $table,'city')
        ->width( $primaryKey,'id');
    }
}