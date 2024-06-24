<?php

namespace App\Http\Controllers\API;
use App\Schedule;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ScheduleController extends Controller
{
    public function getSingleSchedule(Request $request){
        $validator = Validator::make($request->all(),[
           'start_time' => 'required',
           'device_id' => 'required',
        ]);

        if($validator->fails())
        {
            return response()->json([
                'data' => null,
                'message' => $validator->messages(),
                'status' => false
            ]);
        }
        else
        {
            //$start_time = date('m-d-Y H:i' , strtotime($request->start_time));

            $schedule = Schedule::where(['device_id'=>$request->device_id, 'start_time'=>$request->start_time])->with('deviceTemplateData.template_assets')->first();
            if($schedule){
                return response()->json([
                    'status' => true,
                    'message' => 'Schedule Found',
                    'data' => $schedule
                ]);
            }else{
                return response()->json([
                    'status' => false,
                    'message' => 'Schedule not Found',
                ]);
            }

        }
    }
    public function getAllSchedules(Request $request){

            $schedules = Schedule::with('deviceTemplateData.template_assets')->get();
            return response()->json([
               'status' => true,
               'message' => 'Scedules Found',
               'data' => $schedules
            ]);

    }
    public function getAssetsDownloadSchedules(Request $request){
        $validator = Validator::make($request->all(),[
            'date' => 'required',

        ]);

        if($validator->fails())
        {
            return response()->json([
                'data' => null,
                'message' => $validator->messages(),
                'status' => false
            ]);
        }
        else
        {
            $date =  date('m-d-Y 00:00', strtotime($request->date));
            $schedule = Schedule::where('start_time','>=', $date)->with('deviceTemplateData.template_assets')->get();
            if($schedule){
                return response()->json([
                    'status' => true,
                    'message' => 'Schedule Found',
                    'data' => $schedule
                ]);
            }else{
                return response()->json([
                    'status' => false,
                    'message' => 'Schedule not Found',
                ]);
            }

        }
    }
    public function deviceSchedules(Request $request){
        $validator = Validator::make($request->all(),[
            'date' => 'required',
            'device_id'=> 'required'

        ]);

        if($validator->fails())
        {
            return response()->json([
                'status' => 421,
                'message' => $validator->messages(),
                
            ]);
        }
        else
        {
            $date =  date('m-d-Y 00:00', strtotime($request->date));
            $schedule = Schedule::where('start_time','>=', $date)->where('device_id', $request->device_id)->with('deviceTemplateData.template_assets')->get();
            if(count($schedule)){
                return response()->json([
                    'status' => 200,
                    'message' => 'Schedule Found',
                    'data' => $schedule
                ]);
            }else{
                return response()->json([
                    'status' => 421,
                    'message' => 'Schedule not Found',
                ]);
            }

        }
    }
}
