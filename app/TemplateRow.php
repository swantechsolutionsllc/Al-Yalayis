<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TemplateRow extends Model
{
    //
	protected $fillable = ['id','row_number', 'height'];

    public function colunms(){
    	return $this->hasMany(TemplateColunm::class);
    }
}
