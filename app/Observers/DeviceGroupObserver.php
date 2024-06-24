<?php

namespace App\Observers;
use App\DeviceGroup;
use App\ActivityLog;
use Illuminate\Support\Facades\Auth;
class DeviceGroupObserver
{
    public function created(DeviceGroup $deviceGroup){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'device-groups',
                'log_type'          => 'created',
                'data'              => 'A New Device Group Added with name '.$deviceGroup->name
            ]);
        }
    }

    public function updating(DeviceGroup $deviceGroup){
        if(Auth::check()){
            if($deviceGroup->isDirty('name')){
                $data = 'Device Group name changed from '.$deviceGroup->getOriginal('name').' to '.$deviceGroup->name;
            }
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'device-groups',
                'log_type'          => 'updated',
                'data'              => isset($data)?$data:'N/A'
            ]);
        }
    }
    public function deleted(DeviceGroup $deviceGroup){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'cities',
                'log_type'          => 'deleted',
                'data'              => 'Device Group named '.$deviceGroup->name.' is deleted'
            ]);
        }
    }
}
