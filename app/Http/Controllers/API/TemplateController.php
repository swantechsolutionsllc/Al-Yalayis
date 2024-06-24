<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Http\Request;
use App\DeviceTemplates;
use App\Rules\JsonFile;
use Illuminate\Support\Facades\Validator;
use App\JsonTemplate;
class TemplateController extends BaseController
{
    //
    public function templates(){

        $templates = DeviceTemplates::all();
        return response()->json([
            'data' => $templates,
            'status' => true
        ]);
    }
    public function store(Request $request){
        
        $validator = Validator::make($request->all(),[
            'file' => 'required|file|mimes:json',
         ]);
 
         if($validator->fails())
         {  return response()->json([
                 'data' => null,
                 'message' => $validator->messages(),
                 'status' => false
            ]);
         }
        $file = $request->file('file');
        $jsonContent = json_decode(file_get_contents($file->getPathname()), true);
        $json = JsonTemplate::create([
            'content' => json_encode($jsonContent)
        ]);
         return response()->json(['message' => 'File uploaded successfully']);
 
    }
}
