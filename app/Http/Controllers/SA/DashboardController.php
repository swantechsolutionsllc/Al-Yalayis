<?php

namespace App\Http\Controllers\SA;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Device;
use App\DL;
class DashboardController extends Controller
{
    //
	 public function __construct()
    {
        $this->middleware(['auth:sa', 'devices']);
    }
    
    public function index()
    {
        $devices = Device::query()->with(['branches', 'dl'])->get();
   		return view('sa.devices.index', compact('devices'));
    }
    public function edit($id){
        $devices = Device::whereId($id)->first();
        return view('sa.devices.edit', compact('devices'));
    }
    public function update(Request $request, $id){
        $dl = DL::where('id',$id)->first();
        $dl->expiery = strtotime(date('Y-m-d', strtotime($request->expiery)));
        $dl->update();
        return redirect()->route('sa.dashboard')->with('success', 'Lisence Updated Successfully!');
    }
}
