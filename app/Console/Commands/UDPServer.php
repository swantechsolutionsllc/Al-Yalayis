<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\QmsWebhook;
use App\Device;
use App\ActionQueue;
use Carbon\Carbon;
use Illuminate\Support\Facades\Cache;
class UDPServer extends Command
{
    protected $signature = 'udp:listen';
    protected $description = 'Listen to UDP socket continuously';

    public function handle()
    {   
        $socket = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
        socket_bind($socket, '0.0.0.0', 1051); // Replace 12345 with your desired port
        while (true) {
            $currentTime = date("H:i");
            //echo $currentTime . PHP_EOL;

            if ($currentTime == "11:31") {
                $devices = Device::whereNotNull('ip_address')->get();
                foreach ($devices as $device) {
                    $response = writeOnUdp($device->ip_address, "restart-app");
                    if(env('APP_DEBUG')){
                        $this->writeLogs("Command sent on ". $device->device_name.' ip: '.$device->ip_address);
                    }
                   
                }
                sleep(60);
            }
            $data = '';
            $remoteAddress = '';
            $remotePort = 0;
            socket_recvfrom($socket, $data, 1024, 0, $remoteAddress, $remotePort);
            QmsWebhook::create([
                'content' => json_encode($data)
            ]);
            if(env('APP_DEBUG')){
                $this->writeLogs(json_encode($data));
            }
            $array = explode(",", $data);
            if(isset($array[0])){
                if($array[0] == 'downloadStatus'){
                    if($array[1]){
                        $action = ActionQueue::where('id', $array[1])->with('device')->first();
                        if($action->started_at == NULL || $action->started_at == null){
                            $action->started_at = Carbon::now();
                            $action->update();
                        }
                    }
                    Cache::put('udp_data', $action->device_id.','.$array[2]);
                    if($array[2] >= 100 && $array[1]){
                        $action->device->content_download_page = $array[2];
                        $action->device->update();
                        $action->completed_at = Carbon::now();
                        $action->update();
                        $action = ActionQueue::whereNull('started_at')->whereNull('requested_at')->with('device')->orderBy('order', 'ASC')->first();
                        if($action && $action->device && $action->device->ip_address){
                            $action->requested_at = Carbon::now();
                            $action->update();
                            $action->device->content_download_page = 0;
                            $action->device->update();
                            $response =  writeOnUdp($action->device->ip_address, "updateContent,".$action->id);
                              
                        } 
                    }else if(isset($array[3])){
                        $device = Device::where('id', $array[3])->first();
                        if($device){
                            $device->content_download_page = 0;
                            $device->update();         
                        }
                    }
                } elseif($array[0] == 'pong'){
                    $device = Device::where('id', $array[1])->first();
                    if($device){
                        $device->is_online = 1;
                        $device->total_pings = 0;
                        $device->update();
                    }               
                }
            }
        }
    }
    function writeLogs($message){
        $myfile = fopen("logs.txt", "a") or die("Unable to open file!");
        $txt =   date("Y-m-d H:i:s")." ".$message."\n";
        fwrite($myfile, $txt);
        fclose($myfile);
    }
}
