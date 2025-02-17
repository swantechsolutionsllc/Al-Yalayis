<?php

namespace App\Http\Controllers\Admin;

use App\Branch;
use App\Device;
use App\DeviceGroup;
use App\Http\Controllers\Controller;
use App\Services\AssignDeviceGroup;
use Illuminate\Http\Request;

class DeviceGroupController extends Controller
{

    public function index()
    {
        $deviceGroups = DeviceGroup::where('organization_id', auth()->user()->organization_id)->with('devices')->get();

        $devices = Device::where('organization_id', auth()->user()->organization_id)->get();

        return view('admin.device_groups.index',compact('deviceGroups','devices'));
    }

    public function store(Request $request)
    {
        if(gettype($request->name) == 'array'){
            foreach($request->name as $name){
                DeviceGroup::create([
                    'name'      => $name,
                    'branch_id'   => $request->branch_id
                ]);
            }
        }else{
            DeviceGroup::create($request->all());
        }
       // DeviceGroup::query()->create($request->all());

        return redirect()->back()->with('success','Device Group created successfully');
    }

    public function edit(DeviceGroup $deviceGroup)
    {
        return view('admin.device_groups.edit', compact('deviceGroup'));
    }


    public function update(Request $request, $id)
    {
        $devieGroup = DeviceGroup::query()->findOrFail($id);

        $devieGroup->update($request->only('name'));

        return redirect('device-group')->with('success','Device group updated successfully');
    }


    public function destroy($id)
    {
        DeviceGroup::findOrFail($id)->delete();
        return redirect('device-group')->with('success','Device Group deleted successfully');
    }

    public function assign(Request $request, AssignDeviceGroup $assignDeviceGroup){

        $assignDeviceGroup->assignDeviceGroup($request->all());

        return redirect('device-group')->with('success','Device Group assigned to devices successfully');
    }

    public function ajax_delete_device_groups(Request $request)
    {
        foreach ($request->deviceGroups as $id){
            DeviceGroup::findOrFail($id)->delete();
        }

        return response()->json(['message'=>'Deleted Successfully', 'status', 200]);
    }
}
