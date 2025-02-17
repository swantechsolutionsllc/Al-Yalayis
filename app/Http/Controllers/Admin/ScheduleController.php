<?php

namespace App\Http\Controllers\Admin;

use App\Branch;
use App\City;
use App\Device;
use App\DeviceGroup;
use App\DeviceTemplateData;
use App\DeviceTemplates;
use App\Http\Controllers\Controller;
use App\Http\Requests\SchedulePostRequest;
use App\ScheduleTemplates;
use App\Zone;
use App\Schedule;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Datatables;
class ScheduleController extends Controller
{
    public function index()
    {
        $zones = Zone::where('organization_id', auth()->user()->organization_id)->get();
        $deviceTemplateData = DeviceTemplateData::with('device_templates')->where('organization_id', auth()->user()->organization_id)->where('is_deleted', 0)->get();
        $schedules = Schedule::where('organization_id', auth()->user()->organization_id)->with(['zone', 'city', 'branch', 'deviceGroup', 'device', 'deviceTemplateData.device_templates'])->get();
        return view('admin.schedule.index',
            compact('zones','deviceTemplateData', 'schedules'));
    }
    public function cities(Request $request,$zone_id){
        $cities = City::where('zone_id', $zone_id)->get();
        if($request->devices){
            $start_time =   date('m-d-Y 00:00:00', strtotime($request->date));
            $end_time = date('m-d-Y 23:59:00',  strtotime($request->date));
            $devices = Device::where('zone_id', $zone_id)->with(['schedules'=>function($query) use ($start_time, $end_time){
                            $query->where('start_time','>=', $start_time);
                            $query->where('end_time','<=', $end_time);
                            $query->orWhere(function ($q) use ($start_time, $end_time) {
                                $q->where('start_time', '<=', $end_time )
                                ->where('end_time', '>=', $start_time);
                            });
                        }])->get();
            $data['devices'] = $devices;
            $data['cities'] = $cities;
            return json_encode($data);
        }
        return json_encode($cities);
    }
    public function branches(Request $request, $city_id ){
        $branches = Branch::where('city_id', $city_id)->get();
        if($request->devices){
            $start_time =   date('m-d-Y 00:00:00', strtotime($request->date));
            $end_time = date('m-d-Y 23:59:59',  strtotime($request->date));
            $devices = Device::where('city_id', $city_id)->with(['schedules'=>function($query) use ($start_time, $end_time){
                                $query->where('start_time','>=', $start_time);
                                $query->where('end_time','<=', $end_time);
                                 $query->orWhere(function ($q) use ($start_time, $end_time) {
                                $q->where('start_time', '<=', $end_time )
                                ->where('end_time', '>=', $start_time);
                            });
                        }])->get();
            $data['devices'] = $devices;
            $data['branches'] = $branches;
            return json_encode($data);
        }
        return json_encode($branches);
    }
    public function deviceGroups(Request $request, $branch_id ){
        $deviceGroups = DeviceGroup::where('branch_id', $branch_id)->get();
        if($request->devices){
            $start_time =   date('m-d-Y 00:00:00', strtotime($request->date));
            $end_time = date('m-d-Y 23:59:59',  strtotime($request->date));
            $devices = Device::where('branch_id', $branch_id)->with(['schedules'=>function($query) use ($start_time, $end_time){
                            $query->where('start_time','>=', $start_time);
                            $query->where('end_time','<=', $end_time);
                             $query->orWhere(function ($q) use ($start_time, $end_time) {
                                $q->where('start_time', '<=', $end_time )
                                ->where('end_time', '>=', $start_time);
                            });
                        }])->get();
            $data['devices'] = $devices;
            $data['deviceGroups'] = $deviceGroups;
            return json_encode($data);
        }
        return json_encode($deviceGroups);
    }
    public function devices(Request $request){
        $orientation = $request->orientation;
        $devices = [];
        if($request->deviceGroup_id){
           $devices = Device::where(['device_group_id' => $request->deviceGroup_id, 'device_orientation'=>$orientation] )->get();
            return json_encode($devices);
        }
        if($request->branch_id){
            $devices = Device::where(['branch_id' => $request->branch_id, 'device_orientation'=>$orientation] )->get();
            return json_encode($devices);
        }
        if($request->city_id){
            $devices = Device::where(['city_id' => $request->city_id, 'device_orientation'=>$orientation] )->get();
            return json_encode($devices);
        }else{

             $devices = Device::where(['zone_id' => $request->zone_id, 'device_orientation'=>$orientation] )->get();
            return json_encode($devices);

        }

    }
    public function create(Request $request){
       // dd($request->all());
        $orientation = $request->orientation;
        $devices = [];
        $already = [];
        if($request->devices){
            $startTime = $request->start_time;
            $endTime = $request->end_time;
            foreach ($request->devices as  $device) {
                $check = Schedule::where(function ($query) use ($startTime, $endTime, $device) {
                    $query
                        ->where(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device)
                                ->where('start_time', '<=', $startTime)
                                ->where('end_time', '>', $startTime);
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device)
                                ->where('start_time', '<', $endTime)
                                ->where('end_time', '>=', $endTime);
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device)
                                ->whereBetween('start_time', [$startTime, $endTime]);
                        })->orWhere(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device)
                                ->whereBetween('end_time', [$startTime, $endTime]);
                        });
                })->count();
                if(!$check){
                    $d = Device::findOrFail($device);
                    Schedule::create([
                        'zone_id'   => $d->zone_id,
                        'city_id'   => $d->city_id,
                        'branch_id' => $d->branch_id,
                        'device_group_id'=> $d->device_group_id,
                        'device_id' => $device,
                        'start_time' => $request->start_time,
                        'assets_download_time' => $request->assets_download_time,
                        'end_time' => $request->end_time,
                        'device_template_data_id'=> $request->deviceTemplate,
                       ]);
                }else{
                    array_push($already, $device);
                }

            }

        }else{
            if($request->deviceGroup_id){
               $devices = Device::where(['device_group_id'=> $request->deviceGroup_id, 'device_orientation' => $orientation])->get();
            }elseif($request->branch_id){
                $devices = Device::where(['branch_id'=> $request->branch_id, 'device_orientation' => $orientation])->get();
            }elseif($request->city_id){

                $devices = Device::where(['city_id'=> $request->city_id, 'device_orientation' => $orientation])->get();

            }else{

                $devices = Device::where(['zone_id'=> $request->zone_id, 'device_orientation' => $orientation])->get();

            }
            $startTime = $request->start_time;
            $endTime = $request->end_time;
            $already = [];
            foreach ($devices as  $device) {
                $check = Schedule::where(function ($query) use ($startTime, $endTime, $device) {
                    $query
                        ->where(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device->id)
                                ->where('start_time', '<=', $startTime)
                                ->where('end_time', '>', $startTime);
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device->id)
                                ->where('start_time', '<', $endTime)
                                ->where('end_time', '>=', $endTime);
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device->id)
                                ->whereBetween('start_time', [$startTime, $endTime]);
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $device) {
                            $query
                                ->where('device_id', $device->id)
                                ->whereBetween('end_time', [$startTime, $endTime]);
                        });
                        
                })->count();
                if(!$check){
                    $d = Device::findOrFail($device->id);
                    Schedule::create([
                        'zone_id'   => $d->zone_id,
                        'city_id'   => $d->city_id,
                        'branch_id' => $d->branch_id,
                        'device_group_id'=> $d->device_group_id,
                        'device_id' => $device->id,
                        'start_time' => $request->start_time,
                        'end_time' => $request->end_time,
                        'device_template_data_id'=> $request->deviceTemplate,
                        'assets_download_time' => $request->assets_download_time,
                       ]);
                }else{
                    array_push($already, $device->device_name);
                }

            }

        }
        if(count($already)){
            return redirect('schedule')->with("error","some Devices were already scheduled in given time slot so they are skipped.");
        }
        return redirect('schedule')->with("success","Scheudle Created successfully");

    }
    public function view(){
        $zones = Zone::where('organization_id', auth()->user()->organization_id)->get();
        return view('admin.schedule.view', compact('zones'));
    }
    public function edit ($id){

       $scheduledDevice = Schedule::with('device')->findOrFail($id);
       $deviceTemplateData = DeviceTemplateData::with('device_templates')->get();
       return view('admin.schedule.edit', compact('scheduledDevice', 'deviceTemplateData'));
    }
    public function updateold(Request $request, $id){


        $scheduledDevice = Schedule::findOrFail($id);

        $check =Schedule::where('device_id', $id)->whereBetween('start_time',[$request->start_time,$request->end_time])->orWhereBetween('end_time',[$request->start_time,$request->end_time])->whereNotIn('id', [$id])->first();

        if(!$check){
            $scheduledDevice->device_template_data_id = $request->deviceTemplate;
            $scheduledDevice->start_time = $request->start_time;
            $scheduledDevice->end_time  = $request->end_time;
            $scheduledDevice->assets_download_time  = $request->assets_download_time;
            $scheduledDevice->update();
            return redirect('schedule-view')->with("success","Schedule Updated successfully");
        }else{
            return redirect('schedule-view')->with("error","Schedule Not Updated! Because this device has already scheduled during this time slot");
        }

    }
    public function update(Request $request, $id){


        $scheduledDevice = Schedule::findOrFail($id);

        $startTime = $request->start_time;
        $endTime = $request->end_time;
        $check = Schedule::where(function ($query) use ($startTime, $endTime, $scheduledDevice, $id) {
                    $query
                        ->where(function ($query) use ($startTime, $endTime, $scheduledDevice, $id) {
                            $query
                                ->where('device_id', $scheduledDevice->device_id)
                                ->where('start_time', '<=', $startTime)
                                ->whereNotIn('id', [$id])
                                ->where('end_time', '>', $startTime);
                                
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $scheduledDevice, $id) {
                            $query
                                ->where('device_id', $scheduledDevice->device_id)
                                ->where('start_time', '<', $endTime)
                                ->whereNotIn('id', [$id])
                                ->where('end_time', '>=', $endTime);
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $scheduledDevice, $id) {
                            $query
                                ->where('device_id', $scheduledDevice->device_id)
                                ->whereNotIn('id', [$id])
                                ->whereBetween('start_time', [$startTime, $endTime]);
                        })
                        ->orWhere(function ($query) use ($startTime, $endTime, $scheduledDevice, $id) {
                            $query
                                ->where('device_id', $scheduledDevice->device_id)
                                ->whereNotIn('id', [$id])
                                ->whereBetween('end_time', [$startTime, $endTime]);
                        });

                })->count();

        if(!$check){
            $scheduledDevice->device_template_data_id = $request->deviceTemplate;
            $scheduledDevice->start_time = $request->start_time;
            $scheduledDevice->end_time  = $request->end_time;
            $scheduledDevice->assets_download_time  = $request->assets_download_time;
            $scheduledDevice->update();
            return redirect('schedule-view')->with("success","Schedule Updated successfully");
        }else{
            return redirect('schedule-view')->with("error","Schedule Not Updated! Because this device has already scheduled during this time slot");
        }

    }
    public function destroy($id){
        $schedule = Schedule::findOrFail($id)->delete();
        return redirect('schedule')->with("success","Schedule deleted successfully");
    }
    public function scheduleDevices(Request $request){
        if($request->device_group_id){
            $sceduleDevices = Schedule::where('organization_id', auth()->user()->organization_id)->with(['zone', 'city', 'branch', 'deviceGroup', 'device', 'deviceTemplateData.device_templates'])->where(['device_group_id' => $request->device_group_id])->get();
        }elseif($request->branch_id){
            $sceduleDevices = Schedule::where('organization_id', auth()->user()->organization_id)->with(['zone', 'city', 'branch', 'deviceGroup', 'device', 'deviceTemplateData.device_templates'])->where(['branch_id'=> $request->branch_id])->get();
        }elseif($request->city_id){
            $sceduleDevices = Schedule::where('organization_id', auth()->user()->organization_id)->with(['zone', 'city', 'branch', 'deviceGroup', 'device', 'deviceTemplateData.device_templates'])->where(['city_id'=> $request->city_id])->get();
        }elseif($request->zone_id){
            $sceduleDevices = Schedule::where('organization_id', auth()->user()->organization_id)->with(['zone', 'city', 'branch', 'deviceGroup', 'device', 'deviceTemplateData.device_templates'])->where(['zone_id'=> $request->zone_id])->get();
        }else{
            $sceduleDevices = Schedule::where('organization_id', auth()->user()->organization_id)->with(['zone', 'city', 'branch', 'deviceGroup', 'device', 'deviceTemplateData.device_templates'])->get();
        }


         return  datatables()->of($sceduleDevices)
                        ->addIndexColumn()
                        ->editColumn('city_id', function(Schedule $data){
                            return $data->city->name;
                        })
                        ->editColumn('branch_id', function(Schedule $data){
                            return $data->branch->branch_name;
                        })
                        ->editColumn('device_group_id', function(Schedule $data){
                            return $data->deviceGroup->name;
                        })
                         ->editColumn('device_id', function(Schedule $data){
                            return $data->device->device_name;
                        })

                          ->addColumn('device_template', function (Schedule $data) {
                            $imageUrl = $data->deviceTemplateData->device_templates->template_images;
                            $url = url('device-templates/view/'.$data->deviceTemplateData->id);
                        return '<a href="'.$url.'"><img src="'.asset( $imageUrl).'" border="0" width="40" class="img-rounded" align="center" /></a> '." ".$data->deviceTemplateData->name;

                        })
                        ->addColumn('actions', function (Schedule $data) {
                            $url = url('/schedule-edit/'.$data->id);

                            return '<a href="'.$url.'" class="btn btn-sm btn-light js-tooltip-enabled" data-toggle="tooltip" title="Edit Schedule" data-original-title="Edit User">
                            <i class="fa fa-fw fa-pencil-alt"></i></a>
                            
                            <button type="button"  data-toggle="modal"  onclick="deleteSchedule('.$data->id.')"  class="btn btn-sm btn-light js-tooltip-enabled" data-toggle="tooltip" title="Delete Schedule" data-original-title="Delete Schdule"><i class="fa fa-fw fa-times"></i></button>';

                        })
                     ->addColumn('ceckbox', function (Schedule $data) {
                         return '<div class="checkbox">
                                <input data-schedule-id="'.$data->id.'" id="schedule-check-'.$data->id.'" value="'.$data->id.'" class="magic-checkbox" type="checkbox">
                                                    <label for="schedule-check-'.$data->id.'"></label>
                                                </div>';

                     })
                        ->rawColumns(['device_template', 'actions', 'ceckbox', 'addIndexColumn'])
                        ->make(true);
     }
     public function groupDevices(Request $request){
        //dd($request->all());
        $start_time =   date('m-d-Y 00:00:00', strtotime($request->date));
         $end_time = date('m-d-Y 23:59:59',  strtotime($request->date));
         if($request->group_id){
             $where = ['device_group_id'=>$request->group_id];
             $message = "No device found in this Device Group";
         }elseif($request->branch_id){
             $where = ['branch_id'=>$request->branch_id];
             $message = "No device found in this Branch";
         }elseif($request->city_id){
             $where = ['city_id'=>$request->city_id];
             $message = "No device found in this City";
         }elseif($request->zone_id){
             $where = ['zone_id'=>$request->zone_id];
             $message = "No device found in this Zone";
         }else{
             $where = [];
             $message = '';
         }
         $devices = Device::where($where)->with(['schedules'=>function($query) use ($start_time
         , $end_time){
                         $query->where('start_time','>=', $start_time);
                         $query->where('end_time','<=', $end_time);
                            $query->orWhere(function ($q) use ($start_time, $end_time) {
                                $q->where('start_time', '<=', $end_time )
                                ->where('end_time', '>=', $start_time);
                            });
                        }])->get();
         $data['devices'] = $devices;
         $data['message'] = $message;
         return json_encode($data);
     }
     public function ajax_delete_schedules (Request $request){

         foreach ($request->schedules as $id){
             Schedule::findOrFail($id)->delete();
         }
         return response()->json(['message'=>'Deleted Successfully', 'status', 200]);
     }
     public function scheduleGraph(){
        $zones = Zone::where('organization_id', auth()->user()->organization_id)->get();
        return view('admin.schedule.graph', compact('zones'));
     }
}
