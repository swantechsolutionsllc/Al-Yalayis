<?php

namespace App\Observers;
use App\DeviceTemplateData;
use App\ActivityLog;
use Illuminate\Support\Facades\Auth;
class DeviceTemplateDataObserver
{
    public function created(DeviceTemplateData $template){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'device-template-data',
                'log_type'          => 'created',
                'data'              => 'A New Template Added with name '.$template->name
            ]);
        }
    }

    public function updating(DeviceTemplateData $template){
        if(Auth::check()){
            if($template->isDirty('name')){
                $data = 'Template name changed from '.$template->getOriginal('name').' to '.$template->name;
            }
            if($template->isDirty('is_deleted')){
                ActivityLog::create([
                    'user_id'           => Auth::user()->id,
                    'organization_id'   => Auth::user()->organization_id,
                    'table_name'        => 'device-template-data',
                    'log_type'          => 'deleted',
                    'data'              => 'Template named '.$template->name.' is deleted'
                ]);
            }else{
                ActivityLog::create([
                    'user_id'           => Auth::user()->id,
                    'organization_id'   => Auth::user()->organization_id,
                    'table_name'        => 'device-template-data',
                    'log_type'          => 'updated',
                    'data'              => isset($data)?$data:'N/A'
                ]);
            }
            
        }
    }
    public function deleted(DeviceTemplateData $template){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'device-template-data',
                'log_type'          => 'deleted',
                'data'              => 'Template named '.$template->name.' is deleted'
            ]);
        }
    }
}
