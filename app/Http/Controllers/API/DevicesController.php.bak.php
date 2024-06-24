<?php

namespace App\Http\Controllers\API;

use App\Branch;
use App\BranchDevices;
use App\Device;
use App\Setting;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use App\DL;
class DevicesController extends Controller
{
    public function devices(){
        $devices = Device::all();
        return response()->json([
            'data' => $devices,
            'status' => true
        ]);
    }

    public function insert(Request $request)
    {

        //$a = Storage::get('licence.txt');
        //$b = base64_decode($a);
        //$c = explode('_', $b);

        $validator = Validator::make($request->all(),[
            'device_uid' => 'required',
            'device_name' => 'required',
            'device_ip' => 'required',
            'device_no' => 'required|unique:devices'
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
                    Device::where('device_uid',$request->device_uid)->exists() ||
                    Device::where('device_name',$request->device_name)->exists()
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
                        'message' => 'Device :' . $insert_device->device_name . 'created successfully',
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
        $imei = DL::where('imei', $request->imei)->first();
        if(!$imei){
            return response()->json([
                'status' => false,
                'message' => "Lisence Not Found against this IMEI",
                'data' => null
            ]);     
         }
          $expiry = strtotime(date('Y-m-d'));
             if($expiry <= $imei->expiery ){
                return response()->json([
                    'status' => true,
                    'message' => "Lisence Found",
                    'data' => $imei->key
                ]); 
            }else{
                return response()->json([
                    'status' => false,
                    'message' => "Device Lisence has expired",
                    'data' => null
                ]); 
            }
    }
}
