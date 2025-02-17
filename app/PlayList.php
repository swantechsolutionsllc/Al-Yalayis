<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlayList extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'status', 'device_template_data_id'];

    public function deviceTemplateData(){
        return $this->belongsTo(DeviceTemplateData::class);
    }
}
