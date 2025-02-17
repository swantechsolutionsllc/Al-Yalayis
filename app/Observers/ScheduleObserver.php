<?php

namespace App\Observers;
use App\Schedule;
use App\ActivityLog;
use Illuminate\Support\Facades\Auth;
class ScheduleObserver
{
    public function created(Schedule $schedule){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'schedules',
                'log_type'          => 'created',
                'data'              => 'Template '.$schedule->deviceTemplateData->name.' is Scheduled on Device '.$schedule->device->device_name.' from '.$schedule->start_time.' to '.$schedule->start_time,
            ]);
        }
    }

    public function updating(Schedule $schedule){
        if(Auth::check()){
            if($schedule->isDirty('name')){
                $data = 'Schedule name changed from '.$schedule->getOriginal('name').' to '.$schedule->name;
            }
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'schedules',
                'log_type'          => 'updated',
                'data'              => isset($data)?$data:'N/A'
            ]);
        }
    }
    public function deleted(Schedule $schedule){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'schedules',
                'log_type'          => 'deleted',
                'data'              => 'Schedule named '.$schedule->name.' is deleted'
            ]);
        }
    }
}
