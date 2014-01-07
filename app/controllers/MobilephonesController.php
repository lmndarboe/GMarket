<?php

class MobilephonesController extends BaseController {




	public function __construct(){
		$this->beforeFilter('auth' ,['except' => ['index','show']]);
	}
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
        return View::make('mobilephones.index');
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
        return View::make('mobilephones.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		

		$data = Input::all();
		$validation = Validator::make($data, Utility::commonRules());
		if($validation->fails()){
			Redirect::to('/')->withErrors($validation); 
		}
        
		$image_path = "";
		if(Input::hasFile('image_path')){
			$file = Input::file('image_path');
			$filename = str_random(20).'.'.$file->getClientOriginalExtension();//;$file->getClientOriginalName();
			$destinationPath = 'uploads/';
			$image_path = $destinationPath.$filename;
			$uploadSuccess = $file->move($destinationPath, $filename);
		}
		

		$mobilephone  = new Mobilephone;
		$mobilephone->category_id = Input::get('category_id');
		$mobilephone->poster_id = Auth::user()->id;
		$mobilephone->product_for = Input::get('product_for');
		$mobilephone->is_replica = Input::get('is_replica');
		$mobilephone->is_touch = Input::get('is_touch');
		$mobilephone->title = Input::get('title');
		$mobilephone->description = Input::get('description');
		$mobilephone->price = Input::get('price');
		$mobilephone->image_path = $image_path; 
		$mobilephone->brand = Input::get('brand');

		$mobilephone->save();

		return Redirect::to('/');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{

		$product = Product::with('category')->find($id);
		$substr = "title LIKE ".implode(' AND title LIKE ', preg_split("/[\s,]+/",preg_replace("/(\w+)/","'%$1%'",$product->title)));
		$substr = preg_split("/[\s,]+/",preg_replace("/(\w+)/","%$1%",$product->title));
		foreach ($substr as $key) {
			$related_products = Product::where('title','like',$key);
		}
		$related_products = Product::where('title','like',$key)->get();
        return View::make('mobilephones.show')->with(compact('product'))->with('related_products',$related_products);
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$product = Product::find($id);
        return View::make('mobilephones.edit')->with(compact('product'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$product = Product::find($id);
		$image_path = $product->image_path;
		if(Input::hasFile('image_path')){
			$file = Input::file('image_path');
			$filename = str_random(20).'.'.$file->getClientOriginalExtension();//;$file->getClientOriginalName();
			$destinationPath = 'uploads/';
			$image_path = $destinationPath.$filename;
			$uploadSuccess = $file->move($destinationPath, $filename);
		}
		Input::merge(['image_path' => $image_path]);
		$input = Input::all();
		$input['image_path'] = $image_path;
		$product = Product::find($id);
		if($product->update($input)){
			
			return Redirect::to('/')->with('message','Successfully Edited');
			
		}

	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
		$product = Product::find($id);
		if($product){
			$product->delete();
		}
		return Redirect::to('/')->with('message','Successfully Deleted');
	}

}
