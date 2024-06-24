<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use Illuminate\Support\Facades\Hash;
class ApiAthentication
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->email){
            $user = User::where('email', $request->email)->first();
           if(Hash::check($request->password, $user->password) && $user && $user->can('use_apis')){
                return $next($request);
           }
            return response()->json([
                'message' => "User Not Found or Permission Denied",
                'status' => false
            ]);
        }
        return response()->json([
            'message' => "Email is Required",
            'status' => false
        ]);
        
    }
}
