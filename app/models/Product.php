<?php

class Product extends Eloquent 
{
	protected $fillable = ['id','category_id','title','poster_id',
							'product_for','is_replica','is_touch',
							'description','price','image_path','brand',
							'model','year','body_type','transmission',
							'fuel_type','mileage','engine_capacity',
							'street_landmark','size','no_bedrooms',
							'no_bathrooms','land_type','features','company_website',
							'apply_via','job_title','job_description','logo_path',
							'created_at','updated_at','sold'];
	public function category(){
		return $this->belongsTo('Category');
	}

	public function user(){
		return $this->belongsTo('User','poster_id');
	}
}

