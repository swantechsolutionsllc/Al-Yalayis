<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ActivityLog;
class ActivityLogController extends Controller
{
    public function index(){
        $logs = ActivityLog::with('user', 'organization');
        if(session()->get('global-org-id')){
            $logs->where('organization_id', session()->get('global-org-id'));
        }
        $logs = $logs->orderBy('id', 'DESC')->get();
        return view('superadmin.logs', compact('logs'));
    }
}
