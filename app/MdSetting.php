<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MdSetting extends Model
{
    use HasFactory;

    //protected $table = 'md_settings';
    protected $fillable = [
        'setting_name' , 
        'main_area_heading_bg_color', 
        'main_area_heading_text_color',
        'main_area_heading_text_size',
        'main_area_content_bg_color',
        'main_content_area_text_color',
        'main_content_area_text_size',
        'main_content_area_blinking_color',
        'history_heading_area_bg_color',
        'history_heading_area_bg_text_color',
        'history_heading_area_text_size',
        'history_content_area_odd_bg_color',
        'history_content_area_odd_text_color',
        'history_content_area_even_bg_color',
        'history_content_area_even_text_color',
        'history_content_area_even_text_size',
        'no_of_rows',
        'text_alignment', 
        'audio',
        'language',
        'logo_alignment',
        'header_background_color',
        'date_time_color',
        'logo_image_size', 
        'ticket_background_color',
        'visibility',
        'ticket_text_color', 
        'ticket_text_size', 
        'ticket_font_family', 
        'ticket_text_direction',
        'ticket_text_speed',
        'history_content_area_odd_text_size'
    ];
}
