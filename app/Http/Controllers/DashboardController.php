<?php

namespace App\Http\Controllers;

use App\Branch;
use App\City;
use App\Device;
use App\DeviceGroup;
use App\Organization;
use App\Zone;
use Illuminate\Support\Facades\Session;
use App\Schedule;
use Auth;
class DashboardController extends Controller
{
    public function index(){
        $time           = date('Y-m-d H:i:s');
        $branches       = Branch::where('organization_id', Auth::user()->organization_id)->get()->count();
        $zones          = Zone::where('organization_id', Auth::user()->organization_id)->get();
        $cities         = City::where('organization_id', Auth::user()->organization_id)->get()->count();
       // $devices        = Device::where(['organization_id'=>auth()->user()->organization_id])->with(['device_group','branches','city','zone', 'activePlayList'])->where('organization_id', Auth::user()->organization_id)->get();
       $mds        = Device::where(['organization_id'=>auth()->user()->organization_id, 'device_type'=> 'md'])->with(['device_group','branches','city','zone', 'activePlayList'])->where('organization_id', Auth::user()->organization_id)->get();
       $cds        = Device::where(['organization_id'=>auth()->user()->organization_id, 'device_type'=> 'cd'])->with(['device_group','branches','city','zone', 'activePlayList'])->where('organization_id', Auth::user()->organization_id)->get(); 
       $deviceGroups   = DeviceGroup::where('organization_id', Auth::user()->organization_id)->get()->count();
        $now =  $start_time = date('Y-m-d H:i:s');
        return view('admin.dashboard',compact('branches','deviceGroups','zones','cities', 'mds', 'cds'));
    }
    public function chartDevices(){
        $devices = Device::where('organization_id', auth()->user()->organization_id)->with(['schedules'=>function($query){
            $start_time =   date('m-d-Y 00:00:00');
            $end_time = date('m-d-Y 23:59:59');
           
                $query->where('start_time','>=', $start_time);
                $query->where('end_time','<=', $end_time);
                $query->orWhere(function ($q) use ($start_time, $end_time) {
                            $q->where('start_time', '<=', $end_time )
                            ->where('end_time', '>=',  $start_time);
                        });

         }])->get();
         return json_encode($devices);
    }
    public function advance(){
        $devices = Device::where(['organization_id'=>auth()->user()->organization_id])->where('is_online', 1)->whereHas('playlists', function ($q){
            $q->where('status',1);
            $q->whereHas('deviceTemplateData');
        })->with(['device_group','branches','city','zone', 'playlist.deviceTemplateData.template_assets'])->get();
        foreach($devices as $d){
            $d->playlist = $d->playlists()->where('status',1)->first();
        }
        return view('admin.advance-dashboard',compact('devices'));   
    }
}
