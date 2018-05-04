<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDistributorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('distributor', function (Blueprint $table) {
            $table->increments('id');
            $table->string('username',30)->unique();
            $table->string('access_code',4);
            $table->string('password');
            $table->string('remember_token')->nullable();
            $table->string('name',30);
            $table->string('email', 100)->unique();
            $table->integer('branch_offices');
            $table->integer('total_score');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('distributor');
    }
}
