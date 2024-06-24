<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\RoleRequest;
use App\Role as Roll;
use Spatie\Permission\Models\Role;
use App\User;
use Auth;
use DB;
use Illuminate\Support\Facades\Artisan;
use App\Permission;
use App\Organization;
class RoleController extends Controller
{
   
    public function index()
    {   if(session()->get('global-org-id')){
            $roles = Roll::where('organization_id', session()->get('global-org-id'))->with(['organization', 'permissions'])->orderBy('id', 'DESC')->get();
        }else{
            $roles = Roll::with(['organization', 'permissions'])->orderBy('id', 'DESC')->get();
        }
        $orgs = Organization::get(['id', 'name']);
        return view('superadmin.roles.index', compact('roles', 'orgs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $role = new Role();
        $role->name = $request->name;
        $role->organization_id = $request->organization;
        $role->guard_name = 'web';
        $role->save();
        $user = User::where(['organization_id'=> $request->organization, 'is_super'=>1])->first();
        $user->assignRole( $role->id);
        return redirect()->route('superadmin.permissions', ['org'=>$request->organization])->with('success','Role Added successfully!');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        $role = Role::findOrFail($id);
        $role->name = $request->name;
        $role->save();
        return redirect()->back()->with('success','Role Updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Role::destroy($id);
        return redirect()->back()->with('success','Role Deleted successfully!');
    }
    public function permissions(){
        $data['orgs'] = Organization::get(['id', 'name']);
        $data['roles'] = DB::table('roles')->where('organization_id', session()->get('global-org-id'))->get();
        $data['permissions'] = Permission::with('childPermissions')->where('parent_id', 0)->get();
        $data['permissionRole'] = DB::table('role_has_permissions')
            ->select(DB::raw('CONCAT(role_id,"-",permission_id) AS detail'))
            ->pluck('detail')->toArray();
        return view('superadmin.roles.permisions', $data);            
    }
    public function savePermissions(Request $request)
    {
        //$org_id = Auth::user()->organization_id;
        DB::table('role_has_permissions')->delete();
        $input = $request->all();
        $permissions = \Arr::get($input, 'permission');
        if ($permissions != '')
            foreach ($permissions as $r_key => $permission) {
                foreach ($permission as $p_key => $per) {
                    $values[] = $p_key;
                }

                if (count($values))
                    for ($i = 0; $i < count($values); $i++)
                    {
                        DB::table('role_has_permissions')->insert([
                            'permission_id' => $values[$i],
                            'role_id' => $r_key,
                            //'organization_id'=> $org_id
                        ]);
                    }
                unset($values);
            }

            Artisan::call('cache:clear');

        return redirect()->route('superadmin.roles.index')->with('success','Permissions are updated successfully!');;
    }
}
