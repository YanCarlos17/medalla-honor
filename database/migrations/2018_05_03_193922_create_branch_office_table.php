<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBranchOfficeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('branchoffice', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',50);
            $table->unsignedInteger('distributor_id');
            $table->unsignedInteger('city_id');
            $table->unsignedInteger('specialization_id');

            $table->foreign('distributor_id')->references('id')->on('distributor');
            $table->foreign('city_id')->references('id')->on('city');
            $table->foreign('specialization_id')->references('id')->on('specialization');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('branchoffice');
    }
}
