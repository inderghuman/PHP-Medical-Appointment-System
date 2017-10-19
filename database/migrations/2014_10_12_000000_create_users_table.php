<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('user_id');
            $table->string('title');
            $table->string('fname');
            $table->string('lname');
            $table->string('sex');
            $table->date('dob');
            $table->string("cell_no");
            $table->string("home_no");
            $table->string("office_no");
            $table->string("ext");
            $table->string('email')->unique();
            $table->string('password');
            $table->string('address1');
            $table->string('address2');
            $table->string('city');
            $table->string('state');
            $table->string("zip_code");
            $table->string('country');
            $table->integer('user_group_id');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}