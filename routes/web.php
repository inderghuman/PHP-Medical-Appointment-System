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

Route::get('/', function () {
    return view('welcome');
});
Auth::routes();


//Logged in users routes
Route::group(['middleware' => ['auth']], function () {
    Route::get('/home', 'HomeController@index')->name('home');
	Route::get('/profile', 'UserController@index')->name('profile');
});

//Admin routes
Route::group(['middleware' => ['role:admin']], function () {
    Route::get('/rooms', 'RoomController@index')->name('rooms');
    Route::post('/rooms', 'RoomController@store')->name('addRoom');
    Route::get('/rooms/delete/{id}', 'RoomController@destroy')->name('deleteRoom');
});

//Doctor routes
Route::group(['middleware' => ['role:doctor']], function () {
    //
});
