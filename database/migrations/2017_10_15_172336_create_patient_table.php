<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patients', function (Blueprint $table) {
            $table->increments('patient_id');
            $table->integer('user_Id');
            $table->date('occupation');
            $table->string('martial_status');
            $table->string('sin_no');
            $table->string("employeer_school");
            $table->string("employeer_school_address");
            $table->string("employeer_school_city");
            $table->string("employeer_school_state");
            $table->string("employeer_school_phoneNo");
            $table->string("emergency_contact_name");
            $table->string("emergency_contact_relationship");
            $table->string("emergency_contact_home_no");
            $table->string("emergency_contact_cell_no");
            $table->string("emergency_contact_work_no");
            $table->string("emergency_contact_ext");
            $table->string("emergency_contact_best_time_to_reach");
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
        Schema::dropIfExists('patient');
    }
}
