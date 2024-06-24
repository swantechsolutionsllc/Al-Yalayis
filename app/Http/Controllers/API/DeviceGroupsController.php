<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DeviceGroup;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\API\BaseController as BaseController;
class DeviceGroupsController extends BaseController
{
    public function deviceGroups($id = ''){
        if($id){
            $deviceGroups = DeviceGroup::where('branch_id', $id)->get();
        }else{
            $deviceGroups = DeviceGroup::get();
        }
        if($deviceGroups){
            return $this->sendResponse( $deviceGroups, '');
        }else{
            return $this->sendError( 'Not Data available', '');
        }
    }
}
