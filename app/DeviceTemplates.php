<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class DeviceTemplates extends Model
{
    protected $fillable = ['id','name','logo_required', 'ticker_text_required', 'images_required','videos_required','ppt_required','template_images', 'rss_feed_required'];

    public function device(){
        $this->belongsTo(Device::class);
    }

    public function device_template_data(){
        return $this->hasMany(DeviceTemplateData::class,'template_id');
    }
    public static function getWidgetType($type){
    	switch ($type) {
    		case 1:
    			return "Pictures widget";
    			break;
    		case 2:
    			return "Slider text widget";
    			break;
    		case 3:
    			return "Queue number area";
    			break;
    		case 4:
    			return "Video widget";
    			break;
    		
    		default:
    			return "";
    			break;
    	}
    	return $type;
    }
}
