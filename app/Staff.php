<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use HasFactory;
    protected  $fillable = [ 'background_stay_time', 'name', 'staff_id', 'staff_background_content', 'content_type', 'organization_id'];
    public static function boot()
    {
        parent::boot();

        static::creating(function ($attr) {
            $attr->organization_id = auth()->user()->organization_id;
        });
       
    }
    public function gallery(){
        return $this->belongsTo(Gallery::class,'staff_background_content', 'url');
    }
}
