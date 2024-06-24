<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SocketMessageLog extends Model
{
    use HasFactory;

    public function device(){
        return $this->belongsTo(Device::class);
    }
}
