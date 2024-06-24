<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Datatables;
use App\ApiLog;
use App\Device;
use App\SocketMessageLog;
class ApiLogsController extends Controller
{
    public function index(Request $request){
        if($request->ajax()){
            $apiLogs = ApiLog::where('organization_id', auth()->user()->organization_id)->with(['user'])->get();
            return  datatables()->of($apiLogs)
                        ->addIndexColumn()
                        ->editColumn('user_id', function(ApiLog $data){
                            return $data->user->name;
                        })
                        ->make();
        }
        return view('admin.apilogs.index');
    }
    public function socketLogs(Request $request){
        $devices = Device::where(['organization_id'=> auth()->user()->organization_id])->get()->pluck('id')->toArray();
      //  if($request->ajax()){
            $logs = SocketMessageLog::whereIn('device_id',  $devices )->with('device')->orderBy('created_at', 'DESC')->get();
           // dd($logs);
        //     return  datatables()->of($logs)
        //                 ->addIndexColumn()
        //                 ->editColumn('device_id', function(SocketMessageLog $data){
        //                     return $data->device->device_name;
        //                 })
        //                 ->editColumn('message_content', function(SocketMessageLog $data){
        //                     return "<pre>".json_decode($data->message_content)."</pre>";
        //                 })
        //                 ->make();
        // }
        return view('admin.apilogs.socket_logs', compact('logs'));
    }
}
