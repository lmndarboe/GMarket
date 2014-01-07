<?php

class Product extends Eloquent 
{
	public function category(){
		return $this->belongsTo('Category');
	}

	public function user(){
		return $this->belongsTo('User','poster_id');
	}
}