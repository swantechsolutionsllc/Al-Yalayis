<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\QmsWebhook;
use App\Device;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
class WebhookController extends Controller
{
    public function index(Request $request){
        $data = QmsWebhook::create([
            'content' => json_encode($request->all())
        ]);
        if($request->counterNo && $request->counterNo != null && $request->counterNo !='null'){

        $counterStatus = strtolower($request->counterStatus);
       // $device = Cache::rememberForever("device_".$request->counterNo, function () use($request){
            $device = Device::where('qms_name', $request->counterNo)->first();
           
        //});
        $mainDisplays = Cache::rememberForever("device_mds_".$device->id, function () use($device) {
            $ids = DB::table('main_display_counter')->where('counter_display', $device->id)->get()->pluck('main_display')->toArray();
            return Device::select('ip_address')->whereIn('id', $ids)->get();
        });
        //dd($mainDisplays);
        $message =  $mdMessage = '';
        if($request->eventName == 'onCounterLogin' && $counterStatus == 'done'){
            $message = "login,".$request->counterNo;
            $mdMessage = "login,".$request->counterNo;
            $device->is_online = 1;
            $device->update();
        }elseif($request->eventName == 'onTokenCall' || $request->eventName == 'OnNextCall' ){
            $message = "ticketCall,".$request->ticketNo.",".$request->customerName.",".$request->customerEmail.",".$request->serviceName;
            $mdMessage = "ticketCall,".$request->counterNo.",".$request->ticketNo.",".$request->serviceName;
          //  echo $mdMessage;
        }
        elseif($request->eventName == 'onCounterLogout'){
            $message = "logout,".$request->staffId;
            $mdMessage = "logout,".$request->counterNo;
            $device->is_online = 0;
            $device->update();
        }
//        if($request->ticketNo){
            if($device && $device->ip_address && $message){
                
                $response =  writeOnUdp($device->ip_address, $message);
            }  
  //      }
        if($mainDisplays &&  $mdMessage){
            foreach($mainDisplays as $md){
                $response =  writeOnUdp($md->ip_address, $mdMessage);
            }
        }
    }
}
    
}