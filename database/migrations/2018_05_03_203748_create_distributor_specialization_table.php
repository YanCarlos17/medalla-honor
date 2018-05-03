<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDistributorSpecializationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('distrib_specialization', function (Blueprint $table) {
            $table->unsignedInteger('distrib_id');
            $table->unsignedInteger('specialization_id');

            $table->primary(['distrib_id', 'specialization_id']);
            $table->foreign('distrib_id')->references('id')->on('distributor');
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
        Schema::dropIfExists('distrib_specialization');
    }
}
