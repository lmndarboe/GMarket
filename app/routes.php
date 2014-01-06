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

Route::post('/ajax',function(){
	$subCat = Category::whereParentId(Input::get('subCategory'))->orderBy('name')->get()->toArray();
	return Response::json($subCat);
	

});

Route::get('/default-route',function(){
	return Category::find(Input::get('category_id'))->name;
});

Route::group(array('before' => 'auth'), function()
{
	Route::get('/logout','UsersController@logout');
	Route::get('/post-ad',function(){
		$rt = array();
		$optionGroups = Category::whereNull('parent_id')->get();
		foreach ($optionGroups as $option) {
			$rt[$option->id]['self'] = $option->toArray();
			$opts = Category::whereParentId($option->id)->get();
			$rt[$option->id]['children'] = array();
			foreach ($opts as $o) {
				$rt[$option->id]['children'][] = $o->toArray();
			}
		}
		
		

		return View::make('master.create')->with('categories',$rt);
	});
});

Route::get('/login','UsersController@login');
Route::post('/session','UsersController@session');






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

	$categories = Category::whereNull('parent_id')->get();
	//$categories = DB::table(DB::raw('categories as p'))->select(DB::raw('id,name ,(select count(*) from categories where parent = p.id) as count'))->whereParent(0)->get();

	return View::make('index')->with('categories',$categories);
});

Route::resource('mobile-phones', 'MobilephonesController');