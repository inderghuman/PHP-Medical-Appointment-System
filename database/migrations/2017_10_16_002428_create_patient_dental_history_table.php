<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientDentalHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_dental_history', function (Blueprint $table) {
            $table->increments('dental_history_id');
            $table->integer('patient_id');
            $table->string('former_dentist_name');
            $table->string('former_dentist_address');
            $table->string('former_dentist_city');
            $table->string('former_dentist_state');
            $table->string("former_dentist_zip_code");
            $table->string('former_dentist_no');
            $table->string('last_visit');
            $table->tinyInteger('bad_breath');
            $table->tinyInteger('bleeding_gum');
            $table->tinyInteger('blister_on_lips_mouth');
            $table->tinyInteger('burning_sensation_tongue');
            $table->tinyInteger('chew_one_side_of_month');
            $table->tinyInteger('smoking');
            $table->tinyInteger('clicking_jaw');
            $table->tinyInteger('dry_mouth');
            $table->tinyInteger('fingernail_bitting');
            $table->tinyInteger('food_collection_between_teeth');
            $table->tinyInteger('foreign_objects');
            $table->tinyInteger('grinding_teeth');
            $table->tinyInteger('jaw_pain');
            $table->tinyInteger('lip_bitting');
            $table->tinyInteger('loose_teeth');
            $table->tinyInteger('mouth_breathing');
            $table->tinyInteger('mouth_pain');
            $table->tinyInteger('orthondontic_treatment');
            $table->tinyInteger('pain_around_ear');
            $table->tinyInteger('sensitivity_to_cold');
            $table->tinyInteger('sensitivity_to_heat');
            $table->tinyInteger('sensitivity_to_sweets');
            $table->tinyInteger('sensitivity_when_biting');
            $table->tinyInteger('sores_in_mouth');
            $table->tinyInteger('frequency_of_flossing');
            $table->tinyInteger('frequency_of_brushing');
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
        Schema::dropIfExists('patient_dental_history');
    }
}
