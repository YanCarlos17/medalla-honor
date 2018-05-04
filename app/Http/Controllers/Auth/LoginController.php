<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;

class LoginController extends Controller
{
    public function index()
    {
        return View('index');
    }

    public function login(Request $request)
    {
        try{/* Valida los datos del formulario de inicio de sesión */
            $this->validate($request,[
                'usuario' => 'required|string',
                'codigo' => 'required|numeric:4',
            ]);

            if ( Auth::attempt(['username' => $request->get('usuario'), 'access_code' => $request->get('codigo'), 'password' => 'mdhr']) )
            {
                return redirect()->route('ranking');
            }
            else
            {
                return redirect()->route('login');
            }
        }
        catch(\Exception $e)
        {
            dd($e);
        }
    }

    public function logout()
    {
        try{
            Auth::logout();
            return redirect()->route('login');
        }
        catch(\Exception $e)
        {
            dd($e);
        }
    }
}
