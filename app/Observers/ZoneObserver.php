<?php

namespace App\Observers;
use App\Zone;
use App\ActivityLog;
use App\Observers\ZoneObserver;
use Illuminate\Support\Facades\Auth;
class ZoneObserver
{
    public function created(Zone $zone){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'zones',
                'log_type'          => 'created',
                'data'              => 'A New Zone Added with name '.$zone->name
            ]);
        }
    }

    public function updating(Zone $zone){
        if(Auth::check()){
            if($zone->isDirty('name')){
                $data = 'zone name changed from '.$zone->getOriginal('name').' to '.$zone->name;
            }
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'zones',
                'log_type'          => 'updated',
                'data'              => $data?$data:'N/A'
            ]);
        }
    }
    public function deleted(Zone $zone){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'zones',
                'log_type'          => 'deleted',
                'data'              => 'Zone named '.$zone->name.' is deleted'
            ]);
        }
    }
}
