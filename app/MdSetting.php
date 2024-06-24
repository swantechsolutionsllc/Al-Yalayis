<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MdSetting extends Model
{
    use HasFactory;

    //protected $table = 'md_settings';
    protected $fillable = ['setting_name' , 'history_area_heading_bg_color','history_area_heading_text_size','history_area_content_color_even' , 'main_area_heading_bg_color', 'main_area_heading_text_size', 'mai_area_content_bg_color_odd', 'mai_area_content_bg_color_even', 'no_of_column', 'no_of_rows', 'text_alignment', 'audio_1', 'audio_2', 'language', 'blinking_color', 'logo_alignment', 'header_background_color', 'date_time_color', 'logo_image_size', 'visibility', 'ticket_background_color', 'ticket_text_color', 'ticket_text_size', 'ticket_font_family', 'ticket_text_direction', 'ticket_text_speed'];
}
