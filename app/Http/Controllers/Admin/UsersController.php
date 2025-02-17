<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use DB;
class UsersController extends Controller
{

    public function index()
    {
        $roles = DB::table('roles')->where('organization_id',auth()->user()->organization_id)->get();
        $authId = auth()->user()->is_super;
        $get_all_users = User::where('organization_id', auth()->user()->organization_id)->get();
        return view('admin.users.index', compact('get_all_users','authId', 'roles'));
    }


    public function create()
    {
        //
    }

    public function store(UserRequest $request)
    {
       // dd($request->all());
        $user = User::query()->create($request->all());
        if($request->is_file == 1 && $request->hasFile('logo')){
            //dd('if');
            $user->avatar =  $this->uploadFile($request, '/uploads/users/', 'logo');
        }else if($request->avtar){
            //dd('else');
            $user->avatar = $request->avtar;
        }
        $user->update();
        $user->assignRole($request->role);
        return redirect('users')->with('success','user created successfully');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $user = User::find($id);
        $roles = DB::table('roles')->where('organization_id',auth()->user()->organization_id)->get();
        return view('admin.users.edit',compact('user', 'roles'));
    }

    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->is_super = $request->is_super;
        $user->save();
        $user->roles()->detach();
        $user->assignRole($request->role);
        
        return redirect('users')->with('success','User Updated Successfully');
    }

    public function destroy($id, Request $request)
    {
        $password = $request->password;

        $hashed_password = User::query()->find(auth()->user()->id);

        if(Hash::check($password , $hashed_password->password) == false)
        {
            return back()->with('error','Password Not Matched');
        }

        User::findOrFail($id)->delete();

        return back()->with('success','User deleted Successfully');
    }
}
