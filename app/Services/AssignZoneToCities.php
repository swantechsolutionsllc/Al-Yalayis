<?php

namespace App\Services;

use App\Branch;
use App\City;
use App\DeviceGroup;

class AssignZoneToCities {

    function assignZoneToCities($request)
    {
        $zoneId = $request['zone_id'];

        foreach($request['city_id'] as $city){

            $branch =  City::with('devices')->findOrFail($city);
            $branch->zone_id = $zoneId;
            $branch->save();
            if($branch->devices){
                foreach ($branch->devices as $d) {
                    $d->city_id = $zoneId;
                    $d->update();
                }
            }
        }
    }
}
