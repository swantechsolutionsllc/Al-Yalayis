<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Staff;
use App\Gallery;
class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gImages = Gallery::where('type', 'image')->orderBy('created_at', 'DESC')->get();
        $gvideos  = Gallery::where('type', 'video')->orderBy('created_at', 'DESC')->get();
        $staff = Staff::where('organization_id', auth()->user()->organization_id)->get();
        return view('admin.staff.index', compact('staff', 'gImages', 'gvideos'));
    }

    public function store(Request $request)
    {
      //  dd($request->all());
        Staff::create($request->except('_token'));
        return redirect()->back()->with('success','Staff added successfully');
    }

    public function edit(Staff $staff)
    {
        $gImages = Gallery::where('type', 'image')->orderBy('created_at', 'DESC')->get();
        $gvideos  = Gallery::where('type', 'video')->orderBy('created_at', 'DESC')->get();
        return view('admin.staff.edit', compact('staff', 'gImages', 'gvideos'));
    }


    public function update(Request $request, $id)
    {
        $staff = Staff::findOrFail($id);
       
        $staff->update($request->all());

        return redirect('staff')->with('success','Staff updated successfully');
    }

    public function destroy($id)
    {
        Staff::findOrFail($id)->delete();
        return redirect('staff')->with('success','Staff deleted successfully');
    }

    
}
