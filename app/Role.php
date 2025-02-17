<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    public function organization(){
        return $this->belongsTo(Organization::class);
    }
    public function permissions(){
        return $this->belongsToMany(Permission::class, 'role_has_permissions');
    }
}
