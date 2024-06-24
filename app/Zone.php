<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use App\Organization;
use Illuminate\Database\Eloquent\SoftDeletes;
class Zone extends Model
{
    protected $fillable = ['name','organization_id','slug'];
    use SoftDeletes;
    public static  function boot()
    {
        parent::boot();

        static::creating(function ($attr) {
            $attr->slug = Str::slug($attr->name,'-');
            $attr->organization_id = auth()->user()->organization_id;
        });
        static::updating(function ($attr) {
            $attr->slug = Str::slug($attr->name, '-');
        });
        static::deleting(function ($zone) {
            $zone->cities->each->delete();
        });
    }

    public function organization(){

        return $this->belongsTo(Organization::class, 'organization_id');

    }

    public function cities(){
        return $this->hasMany(City::class)->select(['id', 'name', 'zone_id']);
    }
    /* public function branches()
    {
        return $this->hasManyThrough('App\Branch', 'App\City');
    }*/
}
