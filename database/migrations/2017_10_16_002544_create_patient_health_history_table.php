<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientHealthHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_health_history', function (Blueprint $table) {
            $table->increments('health_history_id');
            $table->integer('patient_id');
            
            $table->string('physician_name');
            $table->string('physician_address');
            $table->string('physician_city');
            $table->string('physician_state');
            $table->string("physician_zip_code");
            $table->string('physician_no');
            $table->string('last_visit');

            $table->tinyInteger('adis_hiv');
            $table->tinyInteger('anemia');
            $table->tinyInteger('arthris');
            $table->tinyInteger('artifical_heart_valves');
            $table->tinyInteger('artifical_joints');
            $table->tinyInteger('smoking');
            $table->tinyInteger('clicking_jaw');
            $table->tinyInteger('asthma');
            $table->tinyInteger('back_problems');
            $table->tinyInteger('bleeding_abnormally');
            $table->tinyInteger('bloodDisease');
            $table->tinyInteger('cancer');
            $table->tinyInteger('chemical_dependency');
            $table->tinyInteger('chemotherapy');
            $table->tinyInteger('circulatory');
            $table->tinyInteger('congenital_hearth_lesions');
            $table->tinyInteger('cough_bloody');
            $table->tinyInteger('diabetes');
            $table->tinyInteger('emphysema');
            $table->tinyInteger('epilepsy');
            $table->tinyInteger('fainting');
            $table->tinyInteger('glaucoma');
            $table->tinyInteger('headaches');
            $table->tinyInteger('heart_murmur');
            $table->tinyInteger('heart_problems');
            $table->tinyInteger('hepatits_type');


            $table->tinyInteger('herpes');
            $table->tinyInteger('high_blood_pressure');
            $table->tinyInteger('jaundice');
            $table->tinyInteger('jaw_pain');
            $table->tinyInteger('kidney_disease');
            $table->tinyInteger('liver_disease');
            $table->tinyInteger('low_blood_pressure');
            $table->tinyInteger('mitral_valve_prolapse');
            $table->tinyInteger('pace_maker');
            $table->tinyInteger('psychiatric_care');
            $table->tinyInteger('radiation_treament');
            $table->tinyInteger('respitory_disease');
            $table->tinyInteger('rheumatic_fever');
            $table->tinyInteger('scarlet_fever');
            $table->tinyInteger('shortness_of_breath');
            $table->tinyInteger('sinus_trouble');
            $table->tinyInteger('skin_rash');
            $table->tinyInteger('special_diet');
            $table->tinyInteger('stroke');
            $table->tinyInteger('swollen_feet');
            $table->tinyInteger('swollen_neck');
            $table->tinyInteger('tyroid');
            $table->tinyInteger('tonsilitis');
            $table->tinyInteger('tuberculosis');
            $table->tinyInteger('tumor_on_head_neck');
            $table->tinyInteger('ulcer');
            $table->tinyInteger('venereal_disease');
            $table->tinyInteger('weight_loss');
            $table->tinyInteger('contact_lenses');
            $table->tinyInteger('pregnant');
            $table->tinyInteger('birth_control_pills');
            $table->tinyInteger('nursing');

            $table->date('expected_due_date');


            $table->text('medications_currently_on');
            $table->string('pharmacy_name');

            $table->tinyInteger('aspirin');
            $table->tinyInteger('sleeping_pills');
            $table->tinyInteger('codeine');
            $table->tinyInteger('Iodine');
            $table->tinyInteger('latex');
            $table->tinyInteger('local_anesthetic');
            $table->tinyInteger('penicillin');
            $table->tinyInteger('sulfa');




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
        Schema::dropIfExists('patient_health_history');
    }
}
