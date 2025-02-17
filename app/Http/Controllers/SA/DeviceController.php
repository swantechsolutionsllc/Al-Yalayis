<?php

namespace App\Http\Controllers\Auth;

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
class DeviceController extends Controller
{
    public function __construct()
     {
         $this->middleware('devices');
     }
    public function index()
    {
        $devices = Device::query()->with(['branches', 'dl'])->get();
        $setting = new Setting;
        $setting = $setting->getCount();
        return view('admin.devices.index', compact('devices', 'setting'));
    }


    public function create()
    {
        return view('admin.devices.create');
    }

    public function store(DeviceRequest $request)
    {
        $imei = DL::where('imei', $request->device_no)->first();
        
        if($imei){
            $expiry = strtotime(date('Y-m-d'));
            if($expiry <= $imei->expiery ){
                
                Device::query()->create($request->all());
                return redirect('devices')->with('success', 'Device registered successfully');    
            }
            return redirect('devices')->with('error', 'Device Lisence has expired');

                
        }
            return redirect('devices')->with('error', 'Device Lisence is not found');
        
        
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $devices = Device::query()->findOrFail($id);

        return view('admin.devices.edit', compact('devices'));
    }


    public function update(Request $request, $id)
    {
        $device = Device::query()->findOrFail($id);

        $device->update($request->except(['device_mac_address']));

        return redirect('devices')->with('success', 'Updated Successfully');
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
}
