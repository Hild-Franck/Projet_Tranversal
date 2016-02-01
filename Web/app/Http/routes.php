<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::post('/inscription', 'LoginController@inscription');

Route::post('/connection', 'LoginController@connection');

Route::post('/delete', 'LoginController@delete');

Route::get('/{user}/messenger', 'MessengerController@getConversations');

Route::post('/{user}/conversation/{conversationId}', 'ConversationController@participate');

Route::post('/{user}/conversation/create', 'ConversationController@create');

Route::post('/{user}/conversation/delete', 'ConversationController@delete');
