<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ActionQueue extends Model
{
    use HasFactory;
    protected $fillable = [
        'device_id', 'event', 'requested_at','started_at', 'completed_at', 'order'
    ];
    public function device(){
        return $this->belongsTo(Device::class);
    }
}
