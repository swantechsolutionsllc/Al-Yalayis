<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Organization;
use App\Country;
use App\User;
use DB;
use Hash;
use App\Http\Requests\OrgnizationRequest;
use Throwable;
use Symfony\Component\HttpFoundation\Session\Session;
class OrganizationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $organizations = Organization::withCount(['devices', 'users'])->orderBy('created_at', 'DESC')->get();
        return view('superadmin.organizations.index', compact('organizations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = Country::all();
        $roles = DB::table('roles')->get();
        return view('superadmin.organizations.create', compact('countries', 'roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       //dd($request->all());
        DB::beginTransaction();
        try {
            // dispatch the event
            if($request->has('logo') ){
                $logo = $this->uploadFile($request, '/uploads/organizations/logos', 'logo');
            }else{
                $logo = $request->logoselected;
            }
            $org = Organization::create([
                'name' => $request->name,
                'logo'=> $logo,
                'country_id'=>$request->country
            ]);
            $user = User::create([
                'name'=> $request->admin_name,
                'email'=> $request->admin_email,
                'password'=> Hash::make($request->admin_password),
                'organization_id'=> $org->id,
                'is_super'=>1
            ]);
            //$user->assignRole($request->roles);
            DB::commit();

            return redirect()->route('superadmin.organizations.index')->with('success','Organization created successfully');
        } catch (Throwable $e) {
            
            dd($e->getMessage());
            DB::rollback();
            return back()->with('error',$e->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $organization = Organization::find($id);
        $admin = $organization->users()->orderBy('id', 'ASC')->first();
        $countries = Country::all();
       
        return view('superadmin.organizations.edit', compact('countries', 'organization', 'admin'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $organization = Organization::find($id);
        
        DB::beginTransaction();
        try {
            $organization->name = $request->name;
            $organization->country_id = $request->country;
            if($request->logo){
                $organization->logo = $this->uploadFile($request, '/uploads/organizations/logos', 'logo');
            }
            $organization->update();
            $user = $organization->users()->orderBy('id', 'ASC')->first();
            
            $user->name     = $request->admin_name;
            $user->email    = $request->admin_email;
            if($request->admin_password){
                $user->password = Hash::make($request->admin_password);
            }
            $user->update();
            //$user->assignRole($request->roles);
            DB::commit();

            return redirect()->route('superadmin.organizations.index')->with('success','Organization updated successfully');
        } catch (Throwable $e) {
            

            DB::rollback();
            return back()->with('error',$e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $organization = Organization::find($id);
        if(Hash::check($request->password , auth()->user()->password) == false)
        {
            return back()->with('error','Password Not Matched');
        }     
        DB::beginTransaction();
        try {
        
                $organization->zones()->delete();
                $organization->cities()->delete();
                $organization->branches()->delete();
                $organization->deviceGroups()->delete();
                $organization->devices()->delete();
                $organization->templates()->delete();
                $organization->schedules()->delete();
                $organization->roles()->delete();
                $organization->users()->delete();
                $organization->delete();
                DB::commit();
                return redirect()->route('superadmin.organizations.index')->with('success','Organization deleted successfully');
        } catch (Throwable $e) {
            DB::rollback();
            return back()->with('error',$e->getMessage());
        }
    }
    public function setGlobalOrganization($id){
        session()->put('global-org-id', $id);
        return redirect()->route('superadmin.dashboard');
    }
}
