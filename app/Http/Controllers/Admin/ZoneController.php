<?php

namespace App\Http\Controllers\Admin;

use App\City;
use App\Http\Controllers\Controller;
use App\Http\Requests\ZoneRequest;
use App\Organization;
use App\Services\AssignZoneToCities;
use App\Services\ZoneService;
use App\Zone;
use Illuminate\Http\Request;

class ZoneController extends Controller
{
    public function index()
    {
        $zones = Zone::where('organization_id', auth()->user()->organization_id)->with(['cities'])->get();

        $cities = City::where('organization_id', auth()->user()->organization_id)->get();

        return view('admin.zones.index', compact('zones','cities'));
    }

    public function store(ZoneRequest $request)
    {
        Zone::create($request->except('_token'));

        return redirect()->back()->with('success','Zone added successfully');
    }

    public function edit(Zone $zone)
    {
        $organization = Organization::all();

        return view('admin.zones.edit', compact('zone','organization'));
    }


    public function update(Request $request, $id)
    {
        $zone = Zone::findOrFail($id);

        $zone->update($request->all());

        return redirect('zones')->with('success','Zone updated successfully');
    }

    public function destroy($id)
    {
        Zone::findOrFail($id)->delete();

        return redirect('zones')->with('success','Zone deleted successfully');
    }

    public function ajax_delete_zones(Request $request)
    {
        foreach ($request->zones as $id){
            Zone::findOrFail($id)->delete();
        }

        return response()->json(['message'=>'Deleted Successfully', 'status', 200]);
    }

    public function assign_zone(AssignZoneToCities $assignZoneToCities, Request $request)
    {
        $assignZoneToCities->assignZoneToCities($request->all());

        return redirect('zones')->with('success','Zones Assign Successfully');
    }
}
