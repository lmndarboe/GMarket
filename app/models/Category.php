<?php

class Category extends Eloquent {
	protected $guarded = array();

	public static $rules = array();
	public  $table_name = "categories";
}