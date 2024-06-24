<?php

namespace App\Observers;
use App\Branch;
use App\ActivityLog;
use App\Observers\BranchObserver;
use Illuminate\Support\Facades\Auth;

class BranchObserver
{
    public function created(Branch $branch){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'branches',
                'log_type'          => 'created',
                'data'              => 'A New Branch Added with name '.$branch->branch_name
            ]);
        }
    }

    public function updating(Branch $branch){
        if(Auth::check()){
            if($branch->isDirty('branch_name')){
                $data = 'Branch name changed from '.$branch->getOriginal('branch_name').' to '.$branch->branch_name;
            }
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'branches',
                'log_type'          => 'updated',
                'data'              => isset($data)?$data:'N/A'
            ]);
        }
    }
    public function deleted(Branch $branch){
        if(Auth::check()){
            ActivityLog::create([
                'user_id'           => Auth::user()->id,
                'organization_id'   => Auth::user()->organization_id,
                'table_name'        => 'branches',
                'log_type'          => 'deleted',
                'data'              => 'Branch named '.$branch->branch_name.' is deleted'
            ]);
        }
    }
}
