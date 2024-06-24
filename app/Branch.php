<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Branch extends Model
{
    protected $fillable = [
       'city_id', 'branch_name','branch_code','organization_id','branch_manager_name', 'branch_contact_no', 'branch_it_support_name', 'branch_it_support_no','device_group_id'
    ];
    use SoftDeletes;


    public function city(){
        return $this->belongsTo(City::class,'city_id');
    }

    public function deviceGroups()
    {
       return $this->hasMany(DeviceGroup::class);
    }

    public function device_group()
    {
        return $this->hasMany(DeviceGroup::class)->select(['id', 'name', 'branch_id']);
    }
    /* public function devices(){
        return $this->hasManyThrough('App\Device', 'App\DeviceGroup');
    }*/
    public function devices(){
        return $this->hasMany(Device::class);
    }
    public static function boot()
    {
        parent::boot();

        static::deleting(function ($branch) {
            $branch->deviceGroups->each->delete();
        });
        static::creating(function($attr){
            $attr->organization_id = auth()->user()->organization_id;
        });
    }
}
