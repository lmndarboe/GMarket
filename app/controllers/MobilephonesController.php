<?php

class MobilephonesController extends BaseController {

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
        return View::make('mobilephones.show');
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
        return View::make('mobilephones.edit');
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
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
		return "Deleting Mobile Phones";
	}

}
