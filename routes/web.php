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

Route::get('/ingresar', function () {
    return view('ingreso');
});
Route::post('rmov','MC@add');
Route::get('list','MC@listar');
Route::get('s-total','MC@totales');

/*
Route::get('s-total','MC@totalSiempre');
Route::get('s-hoy','MC@totalHoy');
Route::get('s-ayer','MC@totalAyer');
Route::get('s-semana','MC@totalLastWeek');
Route::get('s-mes','MC@totalLastMonth');
*/
Route::get('/', function () {
    return view('panel');
});