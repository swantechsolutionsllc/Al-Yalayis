<?php

namespace App\Http\Controllers\API;

use App\Branch;
use App\BranchDevices;
use App\Device;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\API\BaseController as BaseController;
class BranchesController extends BaseController
{
    public function branches($id = ''){
        if($id){
            $branches = Branch::where('city_id', $id)->get();
        }else{
            $branches = Branch::get(); 
        }
        if($branches){    
            return $this->sendResponse( $branches, '');
        }else{
            return $this->sendError( 'Not Data available', '');
        }
        
    }
}
