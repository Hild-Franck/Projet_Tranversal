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
Route::get('/inscription', 'Auth\AuthController@getRegister');

Route::post('/inscription', 'Auth\AuthController@postRegister');

Route::get('/connection', 'Auth\AuthController@getLogin');

Route::post('/connection', 'Auth\AuthController@postLogin');

Route::post('/delete', 'UserController@delete');

Route::get('/{user}/messenger', 'MessengerController@getConversations');

Route::post('/{user}/conversation/{conversationId}', 'ConversationController@participate');

Route::post('/{user}/conversation/{conversationId}/add-message', 'ConversationController@addMessage');

Route::post('/{user}/conversation/create', 'ConversationController@create');

Route::post('/{user}/conversation/delete', 'ConversationController@delete');
