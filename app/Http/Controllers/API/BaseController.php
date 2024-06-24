<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    public function sendResponse($result, $message)
    {
    	$response = [
            'status' => true,
            'data'    => $result,
            'message' => $message,
        ];
        return response()->json($response, 200);
    }

    public function sendError($error, $errorMessages = [], $code = 404)
    {
    	$response = [
            'status' => false,
            'message' => $error,
        ];

        if(!empty($errorMessages)){
            $response['error'] = $errorMessages;
        }

        return response()->json($response, $code);
    }
    public function saveImage($request, $name, $detination){
        $file = $request->file($name);
        $name = $file->getClientOriginalName();
        $destinationPath = public_path() . '/uploads/'.$detination;
        $extension = $file->getClientOriginalExtension();
        $fileName = rand(11111,99999).'_'.time().'.'.$extension;
        $file->move($destinationPath, $fileName);
        return 'uploads/'.$detination.'/'.$fileName;
    }
}
