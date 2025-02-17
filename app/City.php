<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\SoftDeletes;
class City extends Model
{

    protected $fillable = ['name', 'slug', 'zone_id', 'organization_id'];
    use SoftDeletes;
    public function zone()
    {

        return $this->belongsTo(Zone::class, 'zone_id');
    }

    public function branches()
    {
        return $this->hasMany(Branch::class)->select(['id', 'branch_name', 'city_id']);
    }

    public static function boot()
    {
        parent::boot();

        static::creating(function ($attr) {
            $attr->slug = Str::slug($attr->name, '-');
            $attr->organization_id = auth()->user()->organization_id;
        });
        static::updating(function ($attr) {
            $attr->slug = Str::slug($attr->name, '-');
        });
        static::deleting(function ($city) {
            $city->branches->each->delete();
        });
    }

    public function scopeIsNotAssinged($query)
    {
        return $query->where('zone_id', '=', null);
    }
    public function devices(){
        return $this->hasMany(Device::class);
    }
}
