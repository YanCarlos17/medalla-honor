<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\User;

class RankingController extends Controller
{
    public function index()
    {
        // Nacional
        $topnacional = User::where('id','!=',1)->take(3)->orderBy('total_score', 'DESC')->get();
         $nacional = User::where('id','!=',1)->orderBy('total_score', 'DESC')->skip(4)->take(29)->get();

        // Tiendas
        $toptiendas = DB::select(
            'SELECT d.id as id, d.name as name, sum(s.score) as score FROM distributor d LEFT JOIN score s ON d.id = s.distributor_id INNER JOIN branchoffice b ON b.id = s.branchoffice_id WHERE b.specialization_id = 1 GROUP BY d.id, d.name ORDER BY score DESC LIMIT 3'
        );
        $tiendas = DB::select(
            'SELECT d.id as id, d.name as name, sum(s.score) as score FROM distributor d LEFT JOIN score s ON d.id = s.distributor_id INNER JOIN branchoffice b ON b.id = s.branchoffice_id WHERE b.specialization_id = 1 GROUP BY d.id, d.name ORDER BY score DESC LIMIT 29 OFFSET 3'
        );
        // Mayoristas
        $topmayoristas = DB::select(
             'SELECT d.id as id, d.name as name, sum(s.score) as score FROM distributor d LEFT JOIN score s ON d.id = s.distributor_id INNER JOIN branchoffice b ON b.id = s.branchoffice_id WHERE b.specialization_id = 2 GROUP BY d.id, d.name ORDER BY score DESC LIMIT 3'
        );
        $mayoristas = DB::select(
              'SELECT d.id as id, d.name as name, sum(s.score) as score FROM distributor d LEFT JOIN score s ON d.id = s.distributor_id INNER JOIN branchoffice b ON b.id = s.branchoffice_id WHERE b.specialization_id = 2 GROUP BY d.id, d.name ORDER BY score DESC LIMIT 29 OFFSET 3'
        );
        //Supermercados
        $topsupermercados = DB::select(
              'SELECT d.id as id, d.name as name, sum(s.score) as score FROM distributor d LEFT JOIN score s ON d.id = s.distributor_id INNER JOIN branchoffice b ON b.id = s.branchoffice_id WHERE b.specialization_id = 3 GROUP BY d.id, d.name ORDER BY score DESC LIMIT 3'
        );
        $supermercados = DB::select(
              'SELECT d.id as id, d.name as name, sum(s.score) as score FROM distributor d LEFT JOIN score s ON d.id = s.distributor_id INNER JOIN branchoffice b ON b.id = s.branchoffice_id WHERE b.specialization_id = 3 GROUP BY d.id, d.name ORDER BY score DESC LIMIT 29 OFFSET 3'
        );

        return View('ranking')->with([
            'nationaltop' => $topnacional,
            'national' => $nacional,
            'storetop'=> $toptiendas,
            'store' => $tiendas,
            'wholesalertop' => $topmayoristas,
            'wholesaler' => $mayoristas,
            'supermarkettop' => $topsupermercados,
            'supermarket' => $supermercados]);
    }

    public function update()
    {
        $score = DB::select('SELECT d.id as id, d.name as name, sum(s.score) as score FROM distributor d LEFT JOIN score s ON d.id = s.distributor_id INNER JOIN branchoffice b ON b.id = s.branchoffice_id GROUP BY d.id, d.name ORDER BY score DESC;');

        foreach($score as $item)
        {
            $distributor = User::find($item->id);
            $distributor->total_score = $item->score;
            $distributor->national_position = $position;
            $distributor->save();
            $position++;
        }
    }
}
