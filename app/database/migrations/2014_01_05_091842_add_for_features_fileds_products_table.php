<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForFeaturesFiledsProductsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('products', function(Blueprint $table) {
			
			$table->boolean('is_touch')->after('poster_id');
			$table->boolean('is_replica')->after('poster_id');
			$table->string('for')->after('poster_id');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('products', function(Blueprint $table) {
			$table->dropColumn('for');
			$table->dropColumn('is_touch');
			$table->dropColumn('is_replica');
		});
	}

}
