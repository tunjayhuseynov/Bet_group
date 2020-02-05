<?php


Route::get('/login', function () {
    return view('welcome');
});


Route::group(['prefix' => 'api'], function () {
    
    Route::get('users/{id}', function ($id) {
        
    });

});

Route::group(['prefix' => 'admin', /* 'middleware' => 'auth'*/], function()
{
    Route::get('dashboard', "adminpanel@home" );
    Route::get('bets', "adminpanel@list");
    Route::get('add', "adminpanel@add");
    Route::post('add', "adminpanel@addpost");
    Route::get('edit/{id}', "adminpanel@edit");
    Route::post('edit/{id}', "adminpanel@editpost");
    Route::post('delete/{id}', "adminpanel@delete");
});