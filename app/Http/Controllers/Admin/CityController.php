<?php

namespace App\Http\Controllers\Admin;

use App\Branch;
use App\City;
use App\Http\Controllers\Controller;
use App\Http\Requests\CityRequest;
use App\Http\Requests\ExcelImportRequest;
use App\Services\AssignCitiesToBranches;
use App\Services\ExcelImportService;
use App\Zone;
use Illuminate\Http\Request;

class CityController extends Controller
{

    public function index()
    {
        $cities = City::where('organization_id', auth()->user()->organization_id)->with(['branches'])->get();

        $branches = Branch::where('organization_id', auth()->user()->organization_id)->get();

        return view('admin.cities.index', compact('cities','branches'));
    }

    public function store(CityRequest $request)
    {
        if(gettype($request->name) == 'array'){
            foreach($request->name as $name){
                City::create([
                    'name'      => $name,
                    'zone_id'   => $request->zone_id
                ]);
            }
        }else{
            City::create($request->all());

        }
        
        return back()->with('success','City created successfully');
    }

    public function edit(City $city)
    {
        $zones = Zone::all();

        return view('admin.cities.edit', compact('city','zones'));
    }

    public function update(Request $request, $id)
    {
        $city = City::findOrFail($id);

        $city->update($request->all());

        return redirect('cities')->with('success','City updated Successfully');
    }

    public function destroy($id)
    {
        City::findOrFail($id)->delete();

        return redirect('cities')->with('success','Selected City deleted successfully');
    }

    public function import(ExcelImportRequest $request, ExcelImportService $excelImportService)
    {
        $excelImportService->generateExcelFilePath($request);

        return redirect('cities')->with('success','Cities Imported Successfully');
    }

    public function assign_cities(Request $request, AssignCitiesToBranches $assignCitiesToBranches)
    {
        $assignCitiesToBranches->assignCitiesToBranches($request->all());

        return redirect('cities')->with('success','City Assigned Successfully');
    }
    public function ajax_delete_cities(Request $request)
    {
        foreach ($request->cities as $id){
            City::findOrFail($id)->delete();
        }

        return response()->json(['message'=>'Deleted Successfully', 'status', 200]);
    }
}
