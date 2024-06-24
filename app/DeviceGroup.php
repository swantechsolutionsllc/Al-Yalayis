<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\SoftDeletes;

class DeviceGroup extends Model
{
    protected $fillable = ['name', 'branch_id', 'slug', 'device', 'organization_id'];
    use SoftDeletes;
    public static function boot()
    {
        parent::boot();

        static::creating(function ($activity) {
            $activity->slug = Str::slug($activity->name, '-');
            $activity->organization_id = auth()->user()->organization_id;
        });

        static::updating(function ($activity) {
            $activity->slug = Str::slug($activity->name, '-');
        });
        static::deleting(function ($deviceGroup) {
            $deviceGroup->devices->each->delete();
        });
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class, 'branch_id');
    }

    public function devices(){
        return $this->hasMany(Device::class)->select(['id', 'device_name', 'device_group_id']);
    }

    public function scopeIsNotAssinged($query){
        return $query->where('branch_id','=', null);
    }
}
