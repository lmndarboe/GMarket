<?php

class Utility {
	public static function commonRules(){
		return array(
			'category_id' => 'required',
			'title'       => 'required',
			'product_for' => 'required',
			'description' => 'required',
			'price'       => 'required',
			'image_path'  => 'required' 
		);
	}
}




