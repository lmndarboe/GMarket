<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/login',function(){
	return View::make('login');
});
Route::get('/', function()
{
	//Category::where('parent','=',0)->get()
	$categories = DB::table(DB::raw('categories as p'))->select(DB::raw('id,name ,(select count(*) from categories where parent = p.id) as count'))->get();

	return View::make('main')->with('categories',$categories);
});