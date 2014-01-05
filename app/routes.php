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

	//return "Data from Ajax";
});

Route::get('/default-route',function(){
	//return Input::get('category_id');
	return Category::find(Input::get('category_id'))->name;
});
/*
Route::post('/ajax2',function(){
	$parent = Input::get('category');
	$name = Input::get('name');
	$cat = new Category;
	$cat->parent_id = $parent;
	$cat->name = $name;
	$cat->save();

	return "Success";
});
*/

Route::get('/login',function(){
	
	return View::make('login');
});
Route::get('/create',function(){
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


Route::get('/test',function()
{

	//return Category::all()->toArray();
	$rt = array();
	$optionGroups = Category::whereNull('parent_id')->get();
	//$rt = $optionGroups;

	foreach ($optionGroups as $option) {

		$rt[$option->id]['self'] = $option->toArray();
		//$rt += '<optgroup label="'. $option->name.'" >';
		$opts = Category::whereParentId($option->id)->get();
		foreach ($opts as $o) {
			//$rt += '<option value="'.$o->id.'">'.$o->name.'</option>';
			$rt[$option->id]['children'][] = $o->toArray();
		}
		

		//$rt += '<optgroup>';
		//return $rt;

	}
	
	return $rt;

	
});