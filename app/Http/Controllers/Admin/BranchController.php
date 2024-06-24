<?php

namespace App\Http\Controllers\Admin;

use App\Branch;
use App\City;
use App\Device;
use App\DeviceGroup;
use App\Http\Controllers\Controller;
use App\Http\Requests\AssignBranchesToCityRequest;
use App\Http\Requests\BranchRequest;
use App\Organization;
use App\Services\AssignBranchesToCities;
use App\Zone;
use Illuminate\Http\Request;

class BranchController extends Controller
{

    public function index()
    {
        $branches = Branch::where('organization_id', auth()->user()->organization_id)->with(['device_group'])->get();

        $device_groups = DeviceGroup::where('organization_id', auth()->user()->organization_id)->get();

        return view('admin.branches.index',compact('branches','device_groups'));
    }

    public function create()
    {
        return view('admin.branches.create');
    }

    public function store(Request $request)
    {
       // dd($request->all());
        if(gettype($request->name) == 'array'){
            foreach($request->name as $name){
                Branch::create([
                    'branch_name'      => $name,
                    'city_id'   => $request->city_id
                ]);
            }
        }else{
            Branch::create($request->all());
        }
        return redirect()->back()->with("success","Branch: " . $request->branch_name . "created successfully" );
    }

    public function edit(Branch $branch)
    {
        return view('admin.branches.edit',compact('branch'));
    }


    public function update(BranchRequest $request, $id)
    {
        $branch = Branch::findOrFail($id);

        $branch->update($request->all());

        return redirect('branches')->with('success','Branch: ' . $branch->branch_name . "updated successfully");
    }


    public function destroy(Branch $branch)
    {
        Branch::findOrFail($branch->id)->delete();

        return redirect('branches')->with('success','Branch deleted successfully');

    }

    public function assign_branch(AssignBranchesToCityRequest $request, AssignBranchesToCities $assignBranchesToCitiesService){

        $assignBranchesToCitiesService->assignBranchesToCity($request);

        return redirect('branches')->with('success','Citi Assigned to branches successfully');
    }
    public function ajax_delete_branches(Request $request)
    {
        foreach ($request->branches as $id){
            Branch::findOrFail($id)->delete();
        }

        return response()->json(['message'=>'Deleted Successfully', 'status', 200]);
    }
}
