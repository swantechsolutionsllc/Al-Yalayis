<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;
    protected $table = 'gallery';
    protected  $fillable = [
        'url',
        'type',
        'size',
        'name',
        'thamnail_url',
        'dimessions',
        'duration'
    ];
}
