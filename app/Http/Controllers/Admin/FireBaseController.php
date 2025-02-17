<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Kreait\Firebase;
use Kreait\Firebase\Factory;
use Kreait\Firebase\ServiceAccount;
class FireBaseController extends Controller
{
    public function index()
    
    {
        $firebase = (new Factory)
            ->withServiceAccount(base_path().'/digital-signage-solution-19f40-firebase-adminsdk-5ld5g-452972d297.json')
            ->withDatabaseUri('https://digital-signage-solution-19f40-default-rtdb.firebaseio.com/');
 
        $database = $firebase->createDatabase();
 
        $database->getReference('devices/'.$device->id.'/')->set(["name" => "name","status"=> "0"]);    
    }
}
