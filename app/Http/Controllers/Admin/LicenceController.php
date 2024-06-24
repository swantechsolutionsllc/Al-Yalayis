<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Setting;
use App\Http\Requests\DeviceAddRequest;
use App\DL;
use App\Device;
class LicenceController extends Controller
{
    public function index(){
        $set = new Setting;
        $count = $set->getCount();
        return view('settings.devices', compact('count'));
    }
    public function update(Request $request){
        $content = file_get_contents(base_path().'/resources/sass/file.json');
        $content = json_decode($content);
        if(sha1(md5($request->password)) == $content->password &&  sha1(md5($request->username)) == $content->username){
            $set = new Setting;
            $set = $set->updateCount($request);
            return redirect('/');    
        }
        
    }
    public function addDevice(DeviceAddRequest $request){
        $content = file_get_contents(base_path().'/resources/sass/file.json');
        $content = json_decode($content);
        if(sha1(md5($request->password)) == $content->password &&  sha1(md5($request->username)) == $content->username){
            $emeiCount = DL::get()->count();
            $set = new Setting;
            $devicesCount = $set->getCount($request)->ds;
            if($emeiCount < $devicesCount){
                $dl = DL::create([
                        'imei' => strtolower($request->imei),
                        'expiery' => strtotime(date('Y-m-d', strtotime($request->date))),
                        'key' => sha1(md5($request->date)),
                ]);
                return redirect()->route('dl', ['imei'=>$request->imei])->with('success', 'IMEI Saved Successfully! Your key is '.$dl->key);
             }else{
                return redirect()->route('dl', ['imei'=>$request->imei])->with('failuer', 'IMEI not saved may devices reached to limt');
             }
            
            
                    
        }
        
    }
    public function updateDevice(Request $request){
        $content = file_get_contents(base_path().'/resources/sass/file.json');
        $content = json_decode($content);
        if(sha1(md5($request->password)) == $content->password &&  sha1(md5($request->username)) == $content->username){
            $dl = DL::where(['imei' => strtolower($request->imei)])->first();
            if($dl){
                $dl->expiery = strtotime(date('Y-m-d', strtotime($request->date)));
                $dl->update();
                return redirect()->route('dl', ['update'=>$request->imei])->with('success', 'Device updated successfully');
            }else{
                return redirect()->route('dl', ['update'=>$request->imei])->with('failuer', 'Not updated try again');
            }
        }
    }
    public function addDeviceOffline(Request $request){
        $content = file_get_contents(base_path().'/resources/sass/file.json');
        $content = json_decode($content);
        if(sha1(md5($request->password)) == $content->password &&  sha1(md5($request->username)) == $content->username){
            $emeiCount = DL::get()->count();
            $set = new Setting;
            $devicesCount = $set->getCount($request)->ds;
            if($emeiCount < $devicesCount){
                $date = date('d-m-Y', strtotime($request->date));
                $str = $date."_".$request->imei;
                $str = str_replace("2", "<", $str);
                $str = str_replace("4", ">", $str);
                $dl = DL::create([
                        'imei'      => strtolower($request->imei),
                        'expiery'   => strtotime(date('Y-m-d', strtotime($request->date))),
                        'key'       => $this->encode($str, 10),
                        'type'    => "Offline"
                ]);
                return redirect()->route('dl', ['offline'=>$request->imei])->with('success', 'IMEI Saved Successfully! Your key is '.$dl->key);
             }else{
                return redirect()->route('dl', ['offline'=>$request->imei])->with('failuer', 'IMEI not saved may devices reached to limt');
             }
            
            
                    
        }
        
    }
    private function encode($s, $k)
    {
        $newS = "";
 
    for($i = 0; $i < strlen($s); ++$i)
    {
        $val = ord($s[$i]);
 
        $dup = $k;
        if($val > 116){
            $newS = $newS.chr($val - 69);
        }else{
            $newS = $newS.chr($val + $k);
        }
 
        $k = $dup;
    }
 
        return $newS;
    }
    public function updateDeviceNumber(Request $request){
        //dd($request->all());
        $content = file_get_contents(base_path().'/resources/sass/file.json');
        $content = json_decode($content);
        if(sha1(md5($request->password)) == $content->password &&  sha1(md5($request->username)) == $content->username){
            $dl = DL::where(['imei' => $request->imei, 'key' => $request->lisence_key])->first();
            if($dl){
                $dl->imei = $request->new_imei;
                $dl->update();
                $device = Device::where('device_no', $request->imei)->first();
                if($device){
                    $device->device_no = $request->new_imei;
                    $device->update();
                }
                return redirect()->route('dl', ['update_number'=>true])->with('success', 'Device Number updated successfully');                 
            }else{
                return redirect()->route('dl', ['update_number'=>true])->with('failuer', 'Device not found');
            }            
            
        }else{
            return redirect()->back()->with('failuer', 'Password Does not match');
        }
    }
}
