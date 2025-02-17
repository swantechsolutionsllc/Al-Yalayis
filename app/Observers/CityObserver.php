<?php
namespace App\Observers;
use App\City;
use App\ActivityLog;
use App\Observers\CityObserver;
use Illuminate\Support\Facades\Auth;


class CityObserver
{
    public function created(City $city){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'cities',
                'log_type'          => 'created',
                'data'              => 'A New City Added with name '.$city->name
            ]);
        }
    }

    public function updating(City $city){
        if(Auth::check()){
            if($city->isDirty('name')){
                $data = 'city name changed from '.$city->getOriginal('name').' to '.$city->name;
            }
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'cities',
                'log_type'          => 'updated',
                'data'              => isset($data)?$data:'N/A'
            ]);
        }
    }
    public function deleted(City $city){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'cities',
                'log_type'          => 'deleted',
                'data'              => 'City named '.$city->name.' is deleted'
            ]);
        }
    }
}