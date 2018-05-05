<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;
use Validator;

class LoginController extends Controller
{
    public function index()
    {
        return View('index');
    }

    public function login(Request $request)
    {
        try{
            $validator = Validator::make( $request->all(), [
                'usuario' => 'required|string',
                'codigo' => 'required|numeric:4'
            ]);

            $errors = new \Illuminate\Support\MessageBag();
            $errors->add('error','Nombre de usuario y/o código de acceso son incorrectos.');

            if( $validator->fails() )
            {
                return redirect()->route('login')->withErrors($errors);
            }
            elseif( Auth::attempt(['username' => $request->get('usuario'), 'access_code' => $request->get('codigo'), 'password' => 'mdhr']) )
            {
                return redirect()->route('ranking');
            }
            else
            {
                return redirect()->route('login')->withErrors($errors);
            }
        }
        catch(\Exception $e)
        {
            $errors = new Illuminate\Support\MessageBag();
            $errors->add('error', $e);
            return redirect()->route('login')->withErrors($errors);
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
