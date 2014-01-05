<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class UpdateProductsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('products', function(Blueprint $table) {
		
			$table->integer('poster_id')->after('title')->unsigned();
			$table->foreign('poster_id')->references('id')->on('users');
			
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('products',function(Blueprint	$table){
			$table->dropColumn('poster_id');
		});
	}

}
