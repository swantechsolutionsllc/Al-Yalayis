<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\User;
class ApiLog extends Model
{
    use HasFactory;
    protected $table = 'service_logs';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'url',
        'params',
        'user_id',
        'ip',
        'method',
        'call_time',
        'duration',
        'request_content',
        'response_content',
        'user_agent',
        'organization_id'

    ];
    public function user(){
        return $this->belongsTo(User::class);
    }
}
