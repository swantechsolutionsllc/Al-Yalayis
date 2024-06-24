<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSchedulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schedules', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('organization_id');
            $table->bigInteger('zone_id');
            $table->bigInteger('city_id');
            $table->bigInteger('branch_id');
            $table->bigInteger('device_group_id');
            $table->bigInteger('device_id');
            $table->bigInteger('device_template_data_id');
            $table->string('start_time');
            $table->string('end_time');
            $table->string('assets_download_time');
            $table->softDeletes();
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
        Schema::dropIfExists('schedules');
    }
}
