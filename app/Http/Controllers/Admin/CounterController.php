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
class CounterController extends Controller
{
    public function __construct()
     {
         $this->middleware('devices');
     }
    public function index()
    {
        $devices = Device::where(['organization_id'=>auth()->user()->organization_id, 'device_type'=>'cd'])->with(['branches', 'dl'])->get();
        $setting = new Setting;
        $setting = $setting->getCount();
        return view('admin.devices.index', compact('devices', 'setting'));
    }
    public function create()
    {
        $devices = Device::where(['organization_id'=>auth()->user()->organization_id])->get();
        return view('admin.counters.create', compact('devices'));
    }

    public function store(Request $request)
    {

        //dd($request->all());
        $validationRules = [
            'name'   => 'required|unique:counters',
            'device_no'     => 'required|unique:counters',
            'name_in_qms'     => 'required|unique:counters',
            'main_display'     => 'required',
           
        ];
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
               
                $device = Device::create([
                    'name'          => $request->name,
                    'device_no'     => $request->device_no,
                    'name_in_qms'   => $request->name_in_qms,
                    'device_id'     =>$request->main_display,
                ]);
               
                $device->update();
                // $this->writeOnUdpPort();
               return 1;
            }else{
                $msgs['device_no'] = 'Counter Lisence has expired';
            }
        }else{
            $msgs['device_no'] = 'Counter Lisence not Found';            
        }
        return redirect('counters')->with('error', $msgs['device_no']);
        
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $device = Device::query()->findOrFail($id);
        $devices = Device::where(['organization_id'=>auth()->user()->organization_id])->get();
        return view('admin.counters.edit', compact('device', 'devices'));
    }


    public function update(Request $request, $id)
    {
        $device = Device::query()->findOrFail($id);

        $device->update($request->except(['device_mac_address']));
        return redirect('counters')->with('success', 'Device Updated Successfully');
    }

    public function destroy($id)
    {
        $device = Device::query()->findOrFail($id)->delete();

        return redirect('counters')->with('Device Deleted Successfully');
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
            return view('admin.counters.not-assigned');
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
}
