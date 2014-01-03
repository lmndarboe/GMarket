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
Route::get('/create',function(){

	return View::make('master.create');
});
Route::get('/view',function(){

	return View::make('master.view');
});
Route::get('/update',function(){

	return View::make('master.update');
});
Route::get('/delete',function(){

	return View::make('master.delete');
});

Route::get('/', function()
{
	//$categories = Category::where('parent','=',0)->get();
	$categories = DB::table(DB::raw('categories as p'))->select(DB::raw('id,name ,(select count(*) from categories where parent = p.id) as count'))->whereParent(0)->get();

	return View::make('index')->with('categories',$categories);
});