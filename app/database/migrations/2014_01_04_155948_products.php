<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class Products extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('products', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('category_id')->unsigned();
			$table->foreign('category_id')->references('id')->on('categories');
			$table->string('title');
			$table->text('description');
			$table->decimal('price');
			$table->string('image_path');
			$table->string('brand');
			$table->string('model');
			$table->integer('year');
			$table->string('body_type');
			$table->string('transmission');
			$table->string('fuel_type');
			$table->string('mileage');
			$table->string('engine_capacity');
			$table->string('street_landmark');
			$table->integer('size');
			$table->integer('no_bedrooms');
			$table->integer('no_bathrooms');
			$table->string('land_type');
			$table->string('features');
			$table->string('company_website');
			$table->string('apply_via');
			$table->string('job_title');
			$table->string('job_description');
			$table->string('logo_path');
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('products');
	}

}
