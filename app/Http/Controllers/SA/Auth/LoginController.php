<?php

namespace App\Http\Controllers\SA\Auth;

use App\Branch;
use App\DeviceGroup;
use App\Organization;
use App\Sa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use MongoDB\Driver\Session;
use OrganizationSeeder;
use App\Http\Controllers\Controller;
class LoginController extends Controller
{

     public function __construct()
    {
        $this->middleware('guest:sa')->except('logout');
    }
    public function showLoginForm()
    {
        return view('sa.auth.login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);

        $user = Sa::where('email', $request->email)->first();
       
        if ($user) {
            if (Hash::check($request->password, $user->password)) {

                 Auth::guard('sa')->login($user);

                return redirect('/sa/dashboard');
            } else {
                return redirect('sa/login')->with('success', 'Password is in-correct');
            }
        } else {
            return redirect('sa/login')->with('error', 'User not found');
        }
    }

    public function logout()
    {

        Auth::guard('sa')->logout();

            return redirect('sa.login')->with('success', 'logged out successfully');
        
    }
}
