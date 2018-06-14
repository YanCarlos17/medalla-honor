<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class cityController extends Controller
{
    public function showCity(){

        $city = DB::table('city')->get();

        dd($city);
        return view('profile', compact($city,'city'));

    }
}
