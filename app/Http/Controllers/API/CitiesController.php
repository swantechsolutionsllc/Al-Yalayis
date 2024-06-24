<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\City;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\API\BaseController as BaseController;
class CitiesController extends BaseController
{
    //
    public function cities($id = ''){
        if($id){
            $cities = City::where('zone_id', $id)->get();
        }else{
            $cities = City::all();
        }
        if($cities){
            return $this->sendResponse( $cities, '');
        }else{
            return $this->sendError( 'Not Data available', '');
        }
    }
}
