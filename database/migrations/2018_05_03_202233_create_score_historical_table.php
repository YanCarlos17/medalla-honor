<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateScoreHistoricalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('scorehistorical', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('distributor_id');
            $table->unsignedInteger('branchoffice_id');
            $table->unsignedInteger('category_id');
            $table->unsignedInteger('measuring_id');
            $table->unsignedInteger('date');
            $table->timestamps();

            $table->foreign('distributor_id')->references('id')->on('distributor');
            $table->foreign('branchoffice_id')->references('id')->on('branchoffice');
            $table->foreign('category_id')->references('id')->on('category');
            $table->foreign('measuring_id')->references('id')->on('measuring');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('scorehistorical');
    }
}
