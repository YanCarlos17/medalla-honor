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
    'uses' => 'LoginController@login'
]);

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
