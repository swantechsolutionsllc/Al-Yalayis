<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use Auth;
class LoginController extends Controller
{
	public function __construct()
	{
		$this->middleware('guest:admin', ['except' => ['logout']]);
	}
    public function showLoginForm(){

    	return view('superadmin.auth.login');
    }
    public function login(Request $request)
	{
		//dd($request->all());
		//--- Validation Section
		$rules = [
			'email' => 'required|email',
			'password' => 'required'
		];

		$validator = Validator::make($request->all(), $rules);

		if ($validator->fails()) {
			return redirect()->back()->withErrors($validator)->withInput();
		}
		if(Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)){
			return redirect()->route('superadmin.dashboard');
		}
		

		   return redirect()->back()->withInput()->with("error", "Credentials Doesn't Match !");
	}
	public function logout(){
		session()->forget('global-org-id');
		Auth::guard('admin')->logout();
        return redirect('superadmin/');
	}
}
