<?php

namespace App\Http\Controllers\Admin;

use App\Branch;
use App\BranchDevices;
use App\Device;
use App\Http\Controllers\Controller;
use App\Http\Requests\DeviceRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use App\Setting;
use App\DL;
use Illuminate\Support\Facades\Validator;
use App\DeviceTemplateAsssets;
use Ratchet\Factory;
use App\Gallery;
use App\MdSetting;
use App\CdSetting;
use Carbon\Carbon;
use App\ActionQueue;
use DB;
use Illuminate\Support\Facades\Cache;
use Artisan;
class DeviceController extends Controller
{
    public function __construct()
     {
         $this->middleware('devices');
     }
    public function index()
    {
        $devices = Device::where(['organization_id'=>auth()->user()->organization_id, 'device_type'=>'md'])->with(['branches', 'dl'])->get();
        $setting = new Setting;
        $setting = $setting->getCount();
        return view('admin.devices.index', compact('devices', 'setting'));
    }


    public function create()
    {
        return view('admin.devices.create');
    }

    public function store(Request $request)
    {

        Artisan::call('cache:clear');
        $validationRules = [
            'device_name'           => 'required|unique:devices',
            'device_no'             => 'required|unique:devices',
            'device_mac_address'    => 'required',
            'device_model'          => 'required',
            'ip_address'            => 'required',
           
        ];
        if($request->device_type == 'cd'){
            $validationRules['background_content'] = 'required';
            $validationRules['qms_name']           = 'required';
        }
        $validator = Validator::make($request->all(), $validationRules);
        if ($validator->fails()) {
            return response()->json([
                'message' => 'error',
                'errors' => $validator->errors()->toArray()
            ], 422);
        }
        $imei = DL::where('imei', $request->device_no)->first();
        if($imei){
            $expiry = strtotime(date('Y-m-d'));
            if($expiry <= $imei->expiery ){
                $token = md5(uniqid());
                $device = Device::query()->create($request->all());
                if($request->device_type == 'md'){
                    foreach($request->counters as $ct){
                        DB::table('main_display_counter')->insert([
                            'main_display'      => $device->id,
                            'counter_display'   => $ct
                        ]);
                    }
                }
                
               return 1;
            }else{
                $msgs['device_no'] = 'Device Lisence has expired';
            }
        }else{
            $msgs['device_no'] = 'Device Lisence not Found';            
        }
        return response()->json([
            'message' => 'error',
            'errors' => $msgs
        ], 422);
        
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $data['devices']            = Device::query()->findOrFail($id);
        $data['gImages']            = Gallery::where('type', 'image')->orderBy('created_at', 'DESC')->get();
        $data['gvideos']            = Gallery::where('type', 'video')->orderBy('created_at', 'DESC')->get();
        $data['setting']            = MdSetting::all();
        $data['counters']           = Device::where(['device_type'=>'cd'])->get();
        $data['mdSetting']          = MdSetting::select('setting_name as name', 'id')->get();
        $data['cdSetting']          = CdSetting::all();
        $data['selectedCounters']   = DB::table('main_display_counter')->where('main_display', $id)->get()->pluck('counter_display')->toArray();
        return view('admin.devices.edit', $data);
    }


    public function update(Request $request, $id)
    {
        //dd($request->all());
        $device = Device::query()->findOrFail($id);
        Artisan::call('cache:clear');
            
        $device->update($request->except(['device_mac_address']));
        //$this->writeOnUdpPort();
        if($request->device_type == 'md' &&  $request->counters){
            
            DB::table('main_display_counter')->where(['main_display' => $device->id])->delete();
            //$device->md_counters = implode(',', $request->counters);  
            foreach($request->counters as $ct){
                    
                DB::table('main_display_counter')->insert([
                    'main_display'      => $device->id,
                    'counter_display'   => $ct
                ]); 
            }
           //$device->update();     
        }
        if($device->device_type == 'md'){
            return redirect('devices')->with('success', 'Device Updated Successfully');
        }
        return redirect('counters')->with('success', 'Counter Updated Successfully');
        
    }

    public function destroy($id)
    {
        $device = Device::query()->findOrFail($id)->delete();

        return redirect('devices')->with('Device Deleted Successfully');
    }
    public function ajax_delete_devices(Request $request)
    {
        foreach ($request->devices as $id){
            Device::findOrFail($id)->delete();
        }
        
        return response()->json(['message'=>'Deleted Successfully', 'status', 200]);
    }
    private function writeOnUdpPort(){
        $d = [];
        try{
            $devices = Device::get()->pluck('ip_address')->toArray();
            $data['sender'] = "admin_panel";
            $data['ips']      = $devices;
            $host = "127.0.0.1";
            $port = 1050;
            $msg = json_encode($data);
            $socket = socket_create(AF_INET, SOCK_DGRAM, 0) or die("Not created");
            socket_connect($socket, $host, $port) or die("not Connect");
            socket_write($socket, $msg, strlen($msg));
            socket_close($socket);
            $d['status'] = true;
            
        }catch(\Exception $e){
            $d['status'] = false;
            $d['msg'] = $e->getMessage();
        }
        return $d;
    }
    // public function liveView($id){
    //     $device = Device::where('id', $id)->whereHas('playlist', function ($q){
    //         $q->where('status',1);
    //         $q->whereHas('deviceTemplateData');
    //     })->with('playlist.deviceTemplateData')->first();
    //     if($device){
    //         $data['device']     = $device;
    //         $data['palylist']   = $device->playlist;
    //         $data['template']   = $device->playlist->deviceTemplateData;
    //         $view               = $data['template']->template_id;
            
    //         $data['images']     = DeviceTemplateAsssets::where(['template_data_id'=> $data['template']->id, 'asset_type'=>'image'])->with('gallery')->get();
    //         $data['videos']     = DeviceTemplateAsssets::where(['template_data_id'=>$data['template']->id, 'asset_type'=>'video'])->with('gallery')->get();
          
    //         return view('admin.device_templates.live-views.template_'.$view, $data);
    //     }else{
    //         return view('admin.devices.not-assigned');
    //     }
    // }
    public function liveView($id){
        $device = Device::where('id', $id)->whereHas('playlists', function ($q){
            $q->where('status',1);
            $q->whereHas('deviceTemplateData');
        })->with('playlist.deviceTemplateData')->first();
        if($device){
            $data['device']     = $device;
            $data['palylist']   = $device->playlists()->where('status', 1)->first();
            $data['template']   = $data['palylist']->deviceTemplateData;
            $view               = $data['template']->template_id;
            
            $data['images']     = DeviceTemplateAsssets::where(['template_data_id'=> $data['template']->id, 'asset_type'=>'image'])->with('gallery')->get();
            $data['videos']     = DeviceTemplateAsssets::where(['template_data_id'=>$data['template']->id, 'asset_type'=>'video'])->with('gallery')->get();
          
            return view('admin.device_templates.live-views.template_'.$view, $data);
        }else{
            return view('admin.devices.not-assigned');
        }
    }
    public function checkOnlineStatus(){

        $client = new \WebSocket\Client("ws://localhost:8090?type=dashboard&id=10");
        $msg = (object)[
            "type"          => "checkheartbeat"
        ];
        
        $client->text(json_encode($msg));
       
        $client->close();
    }
    public function publishContent(){
        // $data       = Cache::forget('udp_data');
        // $devices    = Device::whereNotNull('ip_address')->orderBy('id', 'DESC')->get();
        // $inserted   = 0;
        // ActionQueue::truncate();
        // foreach($devices as $device){
        //     $action = ActionQueue::where(['device_id'=> $device->id,'event'=> 'update-content'])->whereNull('started_at')->whereNull('completed_at')->first();
        //     if(!$action){
        //         $inserted++;
        //         ActionQueue::create([
        //             'device_id'     => $device->id,
        //             'event'        => 'update-content',
        //             'order'         => $inserted
        //         ]);
        //         $device->content_download_page = 0;
        //         $device->update();
        //     }
        // }
        // if($inserted){
        //     $action = ActionQueue::whereNull('started_at')->whereNull('requested_at')->with('device')->first();
            
        //     if($action && $action->device && $action->device->ip_address){
        //         $action->requested_at = Carbon::now();
        //         $action->update();
        //         $response =  writeOnUdp($action->device->ip_address, "updateContent,".$action->id);
                  
        //     } 
        // }
        $devices    = Device::whereNotNull('ip_address')->with('actionQueue')->get();
       return view('admin.devices.publish', compact('devices'));
    }
    public function deviceActions(Request $request){
       // dd($request->all());
        $device = Device::where('id', $request->device_id)->first();
        if($device && $device->ip_address){
           $response =  writeOnUdp($device->ip_address, $request->message);
          if($response == true){
            return response()->json(['success' => 'Reqeust has sent Successfully']);
          }else{
            return response()->json(['error' => $response]);
          }
           
        }else{
            return response()->json(['error' => 'Record not found'], 404);
        }

    }
    public function fetchUdpData(){
        $data = Cache::get('udp_data');
        return $data;
    }
    public function sendPingMessage(){
        Device::query()->increment('total_pings', 1);
        $devices = Device::where("device_type","md")->get();
        foreach($devices as $d){
            writeOnUdp($d->ip_address, "ping");
        }
        return $devices;
    }
    public function updateContnetQueue(){
        $fiveMinutesAgo = Carbon::now()->subMinutes(5);
        $ac = ActionQueue::where('requested_at', '<=', $fiveMinutesAgo)->whereNull('started_at')->whereNull('completed_at')->first();
        if($ac){
            $latestOrder = ActionQueue::orderBy('order', 'DESC')->first();
            $ac->order = $latestOrder->order + 1;
            $ac->requested_at = null;
            $ac->update(); 

            $action = ActionQueue::whereNull('started_at')->whereNull('requested_at')->with('device')->orderBy('order', 'ASC')->first();
            if($action && $action->device && $action->device->ip_address){
                $action->requested_at = Carbon::now();
                $action->update();
                $action->device->content_download_page = 0;
                $action->device->update();
                $response =  writeOnUdp($action->device->ip_address, "updateContent,".$action->id);                    
            } 
        }
    }
    public function publishContentStore(Request $request){
        $devices    = Device::whereNotNull('ip_address')->whereIn('id', $request->device_id)->get();
        $inserted   = 0;
        ActionQueue::truncate();
        foreach($devices as $device){
            $action = ActionQueue::where(['device_id'=> $device->id,'event'=> 'update-content'])->whereNull('started_at')->whereNull('completed_at')->first();
            if(!$action){
                $inserted++;
                ActionQueue::create([
                    'device_id'     => $device->id,
                    'event'        => 'update-content',
                    'order'         => $inserted
                ]);
                $device->content_download_page = 0;
                $device->update();
            }
        }
        if($inserted){
            $action = ActionQueue::whereNull('started_at')->whereNull('requested_at')->with('device')->first();
            
            if($action && $action->device && $action->device->ip_address){
                $action->requested_at = Carbon::now();
                $action->update();
                writeOnUdp($action->device->ip_address, "updateContent,".$action->id); 
            } 
        }
        return back()->with('success','Content Update Request Sent Successfully');
    }
}
