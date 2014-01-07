<?php

class Category extends Eloquent {
	protected $guarded = array();

	public static $rules = array();
	public  $table = "categories";

	public function products(){
		return $this->hasMany('Product');
	}

	
}
