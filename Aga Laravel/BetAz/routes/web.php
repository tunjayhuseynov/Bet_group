<?php


Route::get('/login', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin', /* 'middleware' => 'auth'*/], function()
{
    Route::get('dashboard', "adminpanel@home" );
});