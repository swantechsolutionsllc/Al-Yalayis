<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Device extends Model
{

    use SoftDeletes;
    protected  $fillable = [
        'device_name',
        'device_no',
        'device_ip',
        'device_model',
        'device_screen_height',
        'device_screen_width',
        'device_storage_memory',
        'screen_resolution',
        'device_orientation',
        'status',
        'device_mac_address',
        'device_type',
        'ip_address',
        'device_group_id',
        'zone_id',
        'city_id',
        'branch_id',
        'socket_token',
        'content_download_status',
        'qms_name',
        'background_content',
        'ticket_color',
        'counter_no_color',
        'ticket_no_blinking_color',
        'ticket_no_font_size',
        'counter_no_font_size',
        'qms_port_no',
        'content_type',
        'setting_id'
        
    ];
    public function zone(){
        return $this->belongsTo(Zone::class);
    }
    public function city(){
        return $this->belongsTo(City::class);
    }
    public function branches(){
        return $this->belongsTo(Branch::class,'branch_id');
    }

    public function device_templates(){
        return $this->hasMany(DeviceTemplates::class);
    }

    public function device_group()
    {
        return $this->belongsTo(DeviceGroup::class,'device_group_id');
    }
    public function schedules(){
        return $this->hasMany(Schedule::class)->with('deviceTemplateData.device_templates');
    }
    public function dl(){
        return $this->hasOne(DL::class, 'imei', 'device_no');
    }
    public function checkStatus($time = null){
        if($time){
            $expiry = strtotime(date('Y-m-d'));
            if($expiry > $time ){
                return "Expired";
            // }else{
            //     return "<kbd class='bg-danger'>expired</kbd>";
            }

        }else{
            return '';
        }
    }
    public function checkLisenceStatus($expiery = null){
        if($expiery){
            $today = strtotime(date('Y-m-d'));
            $date = date('d M Y', ($expiery));
            if($today > $expiery ){
                return "<span class='text-danger'>".$date."</span>";
            }else{
                return "<span class='text-success'>".$date."</span>";
            }

        }else{
            return '';
        }
    }
    public function runningTemplate(){
       
        $now =  $start_time = date('Y-m-d H:i:s');
        return $this->hasOne(Schedule::class)->where('start_time', '<=', $now )->where('end_time', '>=', $now)->with('deviceTemplateData.device_templates');
    }
    public function playlist(){
        return $this->belongsTo(PlayList::class, 'play_list_id');
    }
    public static function boot()
    {
        parent::boot();
        static::deleting(function ($devices) {
            $devices->schedules->each->delete();
        });
        static::creating(function ($attr) {
            $attr->organization_id = auth()->user()->organization_id;
        });
    }
    public function playlists(){
        return $this->belongsToMany(PlayList::class);
    }
    public function activePlayList(){
        return $this->belongsToMany(PlayList::class)->where('status', 1);
    }
    public function gallery(){
        return $this->belongsTo(Gallery::class,'background_content', 'url');
    }
    public function staff(){
        return $this->belongsTo(Staff::class,'loggedin_staff_id', 'staff_id');
    }
    // public function settings()
    // {
    //     // dd($this->device_type);
    // //    if ($this->device_type === 'md') {
    //         return $this->belongsTo(MdSetting::class, 'setting_id');
    //     // } 
    //     // elseif ($this->device_type === 'cd') {
    //     //     return $this->belongsTo(CDSetting::class, 'settings_id');
    //     // } 
    //     //////else {
    //         // return null; // Handle unsupported device types
    //    // }
    // }
    // public function settings()
    // {
       
    //     if ($this->device_type == 'cd') {
    //         return $this->belongsTo(CdSetting::class, 'setting_id');
    //     } elseif ($this->device_type == 'md') {
    //         return $this->belongsTo(MdSetting::class, 'setting_id');
    //     }
    //     return null;
    // }

    public function cdSetting()
    {
        return $this->belongsTo(CdSetting::class, 'setting_id');
    }

    public function mdSetting()
    {
        return $this->belongsTo(MdSetting::class, 'setting_id');
    }

    // public function getSettingsAttribute()
    // {
    //     return $this->setting;
    // }
    public function actionQueue(){
        return $this->hasOne(actionQueue::class)->latest();
    }
}
