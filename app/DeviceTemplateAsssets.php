<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeviceTemplateAsssets extends Model
{
    public function device_template_data_assets(){
        return $this->belongsTo(DeviceTemplateData::class,'template_data_id');
    }
    public function gallery(){
        return $this->belongsTo(Gallery::class,'asset_url', 'url');
    }
    public function getDuration($playlist_id, $asset_id){
        $duration = \DB::table('playlist_assets')->where(['play_list_id' => $playlist_id, 'asset_id'=>$asset_id])->first();
        if($duration){
            return $duration->duration;
        }
    }   
}
