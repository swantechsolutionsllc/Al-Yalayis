<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Route;
use Closure;
use App\Setting;
use App\Device;

class Devices
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Route::currentRouteName() == 'devices.create' || Route::currentRouteName() == 'devices.store'){
            $devices = Device::all()->count();

            $setting = new Setting;
            $setting = $setting->getCount();
            if($devices < $setting->ds){
                return $next($request);    
            }else{
                return redirect()->back()->with('error', 'Devices count reached to limit please purcase license to add more');
            } 
        }
            return $next($request);    
        
        
    }
}
