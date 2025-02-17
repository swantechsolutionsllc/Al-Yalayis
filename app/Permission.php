<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{

    public function childPermissions(){
       return $this->hasMany(Permission::class, 'parent_id');
    }
}
