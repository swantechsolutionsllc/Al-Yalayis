<?php

namespace App\Services;

use App\Branch;
use App\DeviceGroup;

class AssignBranchesToCities {

    function assignBranchesToCity($request)
    {
        $branchId = $request->branch_name;

        foreach($request->device_group as $device){

            $branch =  DeviceGroup::with('devices')->findOrFail($device);
            $branch->branch_id = $branchId;
            $branch->save();
            if($branch->devices) {
                foreach ($branch->devices as $d) {
                    $d->branch_id = $branchId;
                    $d->update();
                }
            }
        }
    }
}
