<?php

namespace App;


use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Sa extends  Authenticatable
{
     use Notifiable;
     protected $fillable = [
        'name', 'email', 'password'];
}