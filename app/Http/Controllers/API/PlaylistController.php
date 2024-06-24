<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
class PlaylistController extends BaseController
{
    public function devicePlaylist($id){
        $device = Device::where('id', $id)->with(['playlist', function(){
            $q->where('status',1);
        }])->first();
        if($device){
            dd($device);
        }
    }
}
