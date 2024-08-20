<?php

namespace App\Http\Controllers\API;

use App\Branch;
use App\BranchDevices;
use App\Device;
use App\Setting;
use App\DL;
use App\ApiLog;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use App\Staff;
use App\Http\Resources\DeviceResource;
use App\Http\Controllers\API\BaseController as BaseController;
class DevicesController extends BaseController
{
    public function index(Request $request, $id = ''){
       
        if($id){
            $devices = Device::where('device_group_id', $id)->whereHas('DL', function($q){
                $expiry = strtotime(date('Y-m-d'));
                return $q->where('expiery', '>=', $expiry);
            })->get();
        }else{
            $devices = Device::whereHas('DL', function($q){
                $expiry = strtotime(date('Y-m-d'));
                return $q->where('expiery', '>=', $expiry);
            })->get();
        }
        
        if(count($devices)){
            $devices->map(function ($device) {
                if($device->device_type == 'md'){
                    $device->settings = $device->mdSetting;
                    unset($device->mdSetting);
                }else{
                    $device->settings = $device->cdSetting;
                    unset($device->cdSetting);
                }

                $device->server_ip =env("SERVER_IP_ADDRESS");
                $device->udp_port = env('APP_UDP_PORT');
            });
            return $this->sendResponse($devices, '');
        }else{
            return $this->sendError('Not Data available', '');
        }
    }
    public function show($id){
        if($id){
            $device = Device::where('id', $id)->with('staff')->whereHas('DL', function($q){
                $expiry = strtotime(date('Y-m-d'));
                return $q->where('expiery', '>=', $expiry);
            })->first();
        }
        if($device){
            $device->server_ip = env("SERVER_IP_ADDRESS");
            $device->udp_port = env('APP_UDP_PORT');
            if($device->device_type == 'md'){
                $device->settings = $device->mdSetting;
                unset($device->mdSetting);
            }else{
                $device->settings = $device->cdSetting;
                unset($device->cdSetting);
            }

            return $this->sendResponse($device, '');
        }else{
            return $this->sendError('Not Data available', '');
        }
    }
    public function devicePlaylist($id){
        $device = Device::where('id', $id)->first();
        if($device){
            if($device->device_type == 'md'){
                $device->settings = $device->mdSetting;
                unset($device->mdSetting);
            }else{
                $device->settings = $device->cdSetting;
                unset($device->cdSetting);
            }
            $device->server_ip = env("SERVER_IP_ADDRESS");
            $device->udp_port = env('APP_UDP_PORT');
            $playList = $device->playlists()->where('status',1)->with('deviceTemplateData.template_assets')->first();
            if($playList){
                $playList->device = $device;
                return $this->sendResponse($playList, '');
            }else{
                return $this->sendError('No playlist assigned to this device', '');    
            }
        }else{
            return $this->sendError('Device Not Found', '');
        }
    }
    public function insert(Request $request)
    {

        //$a = Storage::get('licence.txt');
        //$b = base64_decode($a);
        //$c = explode('_', $b);

        $validator = Validator::make($request->all(),[
            'device_no' => 'required',
            'device_name' => 'required',
            'device_ip' => 'required'
        ]);

        if($validator->fails())
        {
            return response()->json([
                'status' => false,
                'message' => $validator->messages(),
                'data' => null
            ]);
        }
        else
        {
            $device_count = Device::all()->count();


            $setting = new Setting;
            $setting = $setting->getCount();
            if($device_count < $setting->ds){

                $imei = DL::where('imei', $request->device_no)->first();
                 if(!$imei){
                    return response()->json([
                        'status' => false,
                        'message' => "Lisence Not Found against this IMEI",
                        'data' => null
                    ]);     
                 }
                  $expiry = strtotime(date('Y-m-d'));
                    if($expiry > $imei->expiery ){
                        return response()->json([
                            'status' => false,
                            'message' => "Device Lisence has expired",
                            'data' => null
                        ]); 
                    }

                if(
                    Device::where('device_no',$request->device_no)->exists()
                )
                {
                    return response()->json([
                        'status' => true,
                        'message' => 'Device Already Registered',
                        'data' => null
                    ]);
                }
                else
                {
                    $insert_device = new Device();

                    $insert_device->branch_id = $request->branch_id;
                    $insert_device->device_uid =  $request->device_uid;
                    $insert_device->device_name = $request->device_name;
                    $insert_device->device_no = $request->device_no;
                    $insert_device->device_mac_address = $request->device_ip;
                    $insert_device->device_model = $request->device_model;
                    $insert_device->device_screen_height = $request->device_screen_height;
                    $insert_device->device_screen_width = $request->device_screen_width;
                    $insert_device->device_storage_memory = $request->device_storage_memory;
                    $insert_device->screen_resolution = $request->screen_resolution;
                    $insert_device->save();

                    return response()->json([
                        'status' => true,
                        'message' => 'Device : ' . $insert_device->device_name . ' created successfully',
                        'data' => $insert_device
                    ]);
                }
            }
            else {
               return response()->json([
                    'status' => false,
                    'message' => "Purchase a licence to add new Device",
                    'data' => null
                ]);
            }
        }
    }

    public function update_device(Request $request){

        $validator = Validator::make($request->all(),[
            'device_id' => 'required',
            'device_uid' => 'required'
        ]);

        if($validator->fails())
        {
            return response()->json([
                'data' => null,
                'message' => 'device ID required',
                'status' => false
            ]);
        }
        else
        {
            $device = Device::find($request->device_id);
            $device->device_uid = $request->device_uid;
            $device->save();

            return response()->json([
                'data' => Device::where('id',$request->device_id)->first(),
                'message' => 'Device Updated Successfully',
                'status' => true
            ]);
        }
    }
    public function dlCheck(Request $request){

        $validator = Validator::make($request->all(),[
            'imei' => 'required'
        ]);

        if($validator->fails())
        {
            return response()->json([
                'status' => false,
                'message' => $validator->messages(),
                'data' => null
            ]);
        }
        $log = ApiLog::create([
            'request_content' => json_encode($request->all()), 
        ]);
        $imei = DL::where('imei', $request->imei)->first();
        if(!$imei){
            $log->response_content = "Lisence Not Found against this IMEI";
            $log->update();
            return response()->json([
                'status' => false,
                'message' => "Lisence Not Found against this IMEI",
                'data' => null
            ]);     
         }
          $expiry = strtotime(date('Y-m-d'));
             if($expiry <= $imei->expiery ){
                $log->response_content = "Lisence Found";
                $log->update();
                $device =  $assignments =  Device::join('zones', 'devices.zone_id', '=', 'zones.id')->join('cities', 'devices.city_id', '=', 'cities.id')->join('branches', 'devices.branch_id', '=', 'branches.id')->join('device_groups', 'devices.device_group_id', '=', 'device_groups.id')->where('device_no', $request->imei)->select('zones.name as zone', 'cities.name as city', 'branches.branch_name as branch', 'device_groups.name as device_group', 'devices.*','setting_id')->first();
                $device->socket_url = env("SERVER_IP_ADDRESS");
                $device->udp_port = env('APP_UDP_PORT');
                if($device->device_type == 'md'){
                    $device->settings = $device->mdSetting;
                    unset($device->mdSetting);
                }else{
                    $device->settings = $device->cdSetting;
                    unset($device->cdSetting);
                }
                return response()->json([
                    'status' => true,
                    'message' => "Lisence Found",
                    'data' => ['key'=> $imei->key, 'device'=>$device]

                ]); 
            }else{
                $log->response_content = "Device Lisence has expired";
                $log->update();
            
                return response()->json([
                    'status' => false,
                    'message' => "Device Lisence has expired",
                    'data' => null
                ]); 
            }
    }
    public function dlCheckForAndroid(Request $request){

        $validator = Validator::make($request->all(),[
            'imei'          => 'required',
            'license_key'   => 'required'
        ]);

        if($validator->fails())
        {
            return response()->json([
                'status' => false,
                'message' => $validator->messages(),
                'data' => null
            ]);
        }
        $imei = DL::where(['imei'=> $request->imei, 'key'=>$request->license_key])->first();
        if(!$imei){
            return response()->json([
                'status' => false,
                'message' => "Lisence Not Found against this IMEI and License Key",
                'data' => null
            ]);     
         }
          $expiry = strtotime(date('Y-m-d'));
             if($expiry <= $imei->expiery ){
                 $data['license_key'] = $imei->key;
                 $data['imei'] = $imei->imei;

                $device =  Device::join('zones', 'devices.zone_id', '=', 'zones.id')->join('cities', 'devices.city_id', '=', 'cities.id')->join('branches', 'devices.branch_id', '=', 'branches.id')->join('device_groups', 'devices.device_group_id', '=', 'device_groups.id')->where('device_no', $request->imei)->select('zones.name as zone', 'cities.name as city', 'branches.branch_name as branch', 'device_groups.name as device_group', 'devices.id', 'devices.qms_name', 'background_content', 'content_type', 'device_type', 'ticket_color', 'device_name', 'counter_no_color','ticket_no_blinking_color','ticket_no_font_size','counter_no_font_size','qms_port_no', 'socket_token', 'is_staff_logged_in', 'loggedin_staff_id', 'setting_id')->first();
                $device->server_ip = env('SERVER_IP_ADDRESS');
                $device->udp_port = env('APP_UDP_PORT');
                if($device->device_type == 'md'){
                    $device->settings = $device->mdSetting;
                    unset($device->mdSetting);
                }else{
                    $device->settings = $device->cdSetting;
                    unset($device->cdSetting);
                }
                if($device->loggedin_staff_id){
                    $device->staff = Staff::where('staff_id', $device->loggedin_staff_id)->first();
                }else{
                    $device->staff = null;
                }
                
                $data['device'] = $device;
               
                return response()->json([
                    'status'    => true,
                    'message'   => "Lisence Found",
                    'data'      => $data
                ]); 
            }else{
                return response()->json([
                    'status' => false,
                    'message' => "Device Lisence has expired",
                    'data' => null
                ]); 
            }
    }
    public function getIps(){
        $devices = Device::get()->pluck('ip_address')->toArray();
        return response()->json([
            'ips' => $devices
        ]);
    }
    public function dlcheckNew(Request $request){
        $validator = Validator::make($request->all(),[
            'imei' => 'required'
        ]);
        if($validator->fails())
        {
            return response()->json([
                'status' => false,
                'message' => $validator->messages(),
                'data' => null
            ]);
        }
        $imei = DL::where('imei', $request->imei)->first();
        if(!$imei){
            return response()->json([
                'status' => false,
                'message' => "Lisence Not Found against this device number",
                'data' => null
            ]);     
         }
          $expiry = strtotime(date('Y-m-d'));
            if($expiry <= $imei->expiery ){
                $device =  Device::join('zones', 'devices.zone_id', '=', 'zones.id')->join('cities', 'devices.city_id', '=', 'cities.id')->join('branches', 'devices.branch_id', '=', 'branches.id')->join('device_groups', 'devices.device_group_id', '=', 'device_groups.id')->where('device_no', $request->imei)->select('zones.name as zone', 'cities.name as city', 'branches.branch_name as branch', 'device_groups.name as device_group', 'devices.id', 'devices.qms_name', 'background_content', 'content_type', 'device_type', 'ticket_color', 'device_name', 'counter_no_color','ticket_no_blinking_color','ticket_no_font_size','counter_no_font_size','qms_port_no', 'socket_token','setting_id' )->first();
                if($device->device_type == 'md'){
                    $device->settings = $device->mdSetting;
                    unset($device->mdSetting);
                }else{
                    $device->settings = $device->cdSetting;
                    unset($device->cdSetting);
                }
                if(!$device){
                    return response()->json([
                        'status' => true,
                        'message' => "Lisence Found",
                        'data' => $imei->key
                    ]);
                }else{
                    return response()->json([
                        'status' => false,
                        'message' => "This Device number has already been used.",
                        'data' => null
                    ]);    
                }
                 
            }else{
                return response()->json([
                    'status' => false,
                    'message' => "Device Lisence has expired",
                    'data' => null
                ]); 
            }
    }
    
    public function staffDetails($staffID){
        $staff = Staff::where('staff_id', $staffID)->first();
        if($staff){
            return $this->sendResponse($staff, '');
        }else{
            return $this->sendError('Not Data available', '');
        }
    }
    public function deviceStatus($id){
        $device = Device::where('qms_name', $id)->with('staff')->first();
        if($device->device_type == 'md'){
            $device->settings = $device->mdSetting;
            unset($device->mdSetting);
        }else{
            $device->settings = $device->cdSetting;
            unset($device->cdSetting);
        }
        return $this->sendResponse($device, '');
    }
    public function counterContent($id){
        $device = Device::select('qms_port_no', 'qms_name','ticket_color', 'counter_no_color', 'ticket_no_blinking_color', 'ticket_no_font_size', 'counter_no_font_size', 'background_content', 'content_type' )->where(['id'=> $id, 'device_type'=> 'cd'])->first();
        return $this->sendResponse($device, '');
    }
    public function deviceSettings($id){
        $device = Device::where('id', $id)->with('staff')->first();
        if($device->device_type == 'md'){
            $device->settings = $device->mdSetting;
            unset($device->mdSetting);
        }else{
            $device->settings = $device->cdSetting;
            unset($device->cdSetting);
        }
        return $this->sendResponse($device, '');
    }
}


