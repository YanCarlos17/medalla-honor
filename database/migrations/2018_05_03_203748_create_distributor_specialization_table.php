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
        Schema::create('distributor_specialization', function (Blueprint $table) {
            $table->unsignedInteger('distributor_id');
            $table->unsignedInteger('specialization_id');

            $table->primary(['branchoffice_id', 'specialization_id']);
            $table->foreign('distributor_id')->references('id')->on('distributor');
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
        Schema::dropIfExists('distributor_specialization');
    }
}
