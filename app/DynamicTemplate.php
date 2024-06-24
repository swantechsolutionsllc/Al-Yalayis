<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DynamicTemplate extends Model
{
     protected $fillable = [
        'name',
    ];

    public function rows(){
    	return $this->hasMany(TemplateRow::class);
    }
}
