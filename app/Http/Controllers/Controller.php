<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    function uploadFile($request, $path, $fileName){
        $uniqueFileName = uniqid().'_'.$request->file($fileName)->getClientOriginalName();
        $request->file($fileName)->move(public_path($path) , $uniqueFileName);
        return $path.'/'.$uniqueFileName;
    }
         
}
