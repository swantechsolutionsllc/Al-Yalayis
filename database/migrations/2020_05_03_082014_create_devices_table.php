<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDevicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('devices', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('organization_id');
            $table->bigInteger('zone_id')->nullable();
            $table->bigInteger('city_id')->nullable();
            $table->bigInteger('branch_id')->nullable();
            $table->bigInteger('device_group_id')->nullable();
            $table->string('device_orientation')->nullable();
            $table->string('device_name')->nullable();
            $table->string('device_uid')->nullable();
            $table->string('device_no')->nullable();
            $table->string('device_mac_address')->nullable();
            $table->string('device_model')->nullable();
            $table->string('device_description')->nullable();
            $table->string('device_screen_height')->nullable();
            $table->string('device_screen_width')->nullable();
            $table->string('device_storage_memory')->nullable();
            $table->string('screen_resolution')->nullable();
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('devices');
    }
}
