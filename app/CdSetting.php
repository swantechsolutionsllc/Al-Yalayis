<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CdSetting extends Model
{
    use HasFactory;

    //protected $table = 'md_settings';
    protected $fillable = ['name' , 'ticket_color','counter_number_color','ticket_blinking_color' , 'ticket_font_size', 'counter_number_font_size', 'service_name_color', 'service_font_size'];
}