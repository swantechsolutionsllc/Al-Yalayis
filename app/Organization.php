<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Str;
use App\Zone;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;

class Organization extends Authenticatable
{
    use Notifiable;

    protected $fillable = ['name','slug', 'logo', 'country_id'];
    public function zones(){
        return $this->hasMany(Zone::class);
    }
    public function cities(){
        return $this->hasMany(City::class);
    }
    public function branches(){
        return $this->hasMany(Branch::class);
    }
    public function deviceGroups(){
        return $this->hasMany(DeviceGroup::class);
    }
    public function devices(){
        return $this->hasMany(Device::class);
    }
    public function templates(){
        return $this->hasMany(DeviceTemplateData::class);
    }
    public function schedules(){
        return $this->hasMany(Schedule::class);
    }
    public function roles(){
        return $this->hasMany(Role::class);
    }
    public function users(){
        return $this->hasMany(User::class);
    }

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($activity){
            $activity->slug = Str::slug($activity->name,'-');
        });

        static::updating(function ($activity){
            $activity->slug = Str::slug($activity->name,'-');
        });
    }

    public function setPasswordAttribute($password){
        $this->attributes['password'] = bcrypt($password);
    }

    
}
