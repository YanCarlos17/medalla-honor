<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [
    'as' => 'login',
    'uses' => 'Auth\LoginController@index'
]);

Route::post('/ingresar', [
    'as' => 'login_post',
    'uses' => 'Auth\LoginController@login'
]);
Route::get('/salir', [
    'as' => 'logout',
    'uses' => 'Auth\LoginController@logout'
]);

Route::group(['middleware' => 'auth'], function(){
    Route::get('/ranking', [
        'as' => 'ranking',
        'uses' => 'RankingController@index'
    ]);
    
    Route::get('/perfil', [
        'as' => 'profile',
        'uses' => 'ProfileController@index'
    ]);
    
    Route::get('/sucursales', [
        'as' => 'branch-ofice',
        'uses' => 'BranchOfficeController@index'
    ]);

    Route::get('/actualizar-total-puntajes', [
        'as' => 'update-total-score',
        'uses' => 'RankingController@update'
    ]);
});

