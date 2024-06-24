<?php

namespace App\Services;

use App\Branch;
use App\DeviceGroup;

class AssignCitiesToBranches {

    function assignCitiesToBranches($request)
    {
        $cityId = $request['city_id'];

        foreach($request['branch_id'] as $branch){

            $branch =  Branch::with('devices')->findOrFail($branch);
            $branch->city_id = $cityId;
            $branch->save();
            if($branch->devices) {
                foreach ($branch->devices as $d) {
                    $d->city_id = $cityId;
                    $d->update();
                }
            }
        }
    }
}
