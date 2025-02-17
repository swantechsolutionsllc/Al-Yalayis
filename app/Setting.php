<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class Setting extends Model
{
    const encryption_key = 123456;
    protected $fillable = [
            'ds'
    ];

     public $timestamps = false;

    public function updateCount($request){
        //dd($request->all());
        $set = Setting::find(1);
        $key = self::encryption_key;
        $set->ds = DB::raw("AES_ENCRYPT('$request->count',  $key)");
        $set->update();
    }
    public function getCount(){
        return  Setting::where('id', 1)->select("*", DB::raw($this->columnsToAESDecryptHelper(array("ds" => "ds"  ))))
        ->first();
    }
    public function columnsToAESDecryptHelper($columns){
        $query = '';
        if(!empty($columns)){
            $i = 0;
            foreach ($columns as $column => $alias) {
                $i++;
                $query .= $this->getAESDecryptionPadding($column)." as `$alias` ";
                if(count($columns) != $i)
                    $query .= " , ";
            }
        }
        return $query;
    }

    public function getAESDecryptionPadding($column){
        $key = self::encryption_key;
        return "CAST(AES_DECRYPT($column, '$key') as char(255))";
    }
}
