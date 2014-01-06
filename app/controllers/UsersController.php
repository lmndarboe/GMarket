<?php

class UsersController extends BaseController {

	public function login()
	{

        return View::make('login');
	}


	public function logout()
	{
		Auth::logout();
		return Redirect::to('/');
	}

	public function session(){
		$cred = array(
	'email' => Input::get('email'),
	'password' => Input::get('password')
	);

	if(Auth::attempt($cred)){
		return Redirect::to('/');
	}else{
		return Redirect::to('/login')
		->with('flashMessage','Incorrect Username/Password!!')
		->withInput();
	}
	}

}