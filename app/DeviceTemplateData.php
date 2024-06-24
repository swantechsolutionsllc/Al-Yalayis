<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class DeviceTemplateData extends Model
{
    protected $fillable = ['id','logo', 'ticker_text', 'organization_id', 'template_id', 'name', 'rss_feed'];

    public function device_templates()
    {
        return $this->belongsTo(DeviceTemplates::class,'template_id');
    }

    public function template_assets()
    {
        return $this->hasMany(DeviceTemplateAsssets::class,'template_data_id');
    }
    public static function boot()
    {
        parent::boot();
        static::creating(function ($attr) {
            $attr->organization_id = auth()->user()->organization_id;
        });
    }
}
