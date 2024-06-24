<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Zone;
use App\Http\Controllers\API\BaseController as BaseController;
class ZonesController extends BaseController
{
    //
    public function zones(){
        $zones = Zone::with('cities')->get();
        if($zones){
            return $this->sendResponse( $zones, '');
        }else{
            return $this->sendError( 'Not Data available', '');
        }
    }
    public function testSocket(){

        $client = new \WebSocket\Client("ws://localhost:8090?type=dashboard&id=10");
        $msg = (object)[
            "type"          => "sendtodevice",
            "device_id"     => 8,
            "action"        => "token-issued"
        ];
        
        $client->text(json_encode($msg));
       
        $client->close();
    }
}
