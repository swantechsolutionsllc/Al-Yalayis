<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DL extends Model
{
	protected $table = 'imeis';
    protected $fillable = ['imei', 'expiery', 'key', 'type'];
}
