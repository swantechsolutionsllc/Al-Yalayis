<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Schedule extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'title',
        'zone_id',
        'city_id',
        'branch_id',
        'device_group_id',
        'start_time',
        'end_time',
        'device_template_data_id',
        'device_id',
        'assets_download_time'

    ];

    public function zone(){

    	return $this->belongsTo(Zone::class);
    }
    public function city(){
    	return $this->belongsTo(City::class);
    }
    public function branch(){
    	return $this->belongsTo(Branch::class);
    }
    public function deviceGroup(){
    	return $this->belongsTo(DeviceGroup::class);
    }
    public function device(){
		return $this->belongsTo(Device::class);
    }
    public function deviceTemplateData(){
    	return $this->belongsTo(DeviceTemplateData::class);
    }
    public static function boot()
    {
        parent::boot();

        static::creating(function ($attr) {
            $attr->organization_id = auth()->user()->organization_id;
        });
       
    }

}
