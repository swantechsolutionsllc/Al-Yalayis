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
use Illuminate\Support\Facades\Artisan;

class UDPServer extends Command
{
    protected $signature = 'udp:listen';
    protected $description = 'Listen to UDP socket continuously';

    public function handle()
    {
        $socket = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
        socket_bind($socket, '0.0.0.0', 1050); // Replace 12345 with your desired port
        $lastExecutionTime = Carbon::now();
        while (true) {
            // Print current time every iteration
            $currentTime = date("H:i");
           // echo $currentTime . PHP_EOL;

            if ($currentTime == "12:39") {
                $devices = Device::whereNotNull('ip_address')->get();
                foreach ($devices as $device) {
                    $response = writeOnUdp($device->ip_address, "restartApplication");
                    if(env('APP_DEBUG')){
                        $this->writeLogs("Command sent on ". $device->device_name.' ip: '.$device->ip_address);
                    }
                }
                sleep(60);
            }
            
            if (Carbon::now()->diffInMinutes($lastExecutionTime) >= 5) {
                Artisan::call('update-content-queue');
                $lastExecutionTime = Carbon::now();
            }
            $read = [$socket];
            $write = null;
            $except = null;
            $timeout = 1; // 1 second timeout

            $data = '';
            $remoteAddress = '';
            $remotePort = 0;

            // Use stream_select to implement non-blocking socket read
            $num_changed_sockets = socket_select($read, $write, $except, $timeout);

            if ($num_changed_sockets > 0) {
                socket_recvfrom($socket, $data, 1024, 0, $remoteAddress, $remotePort);
                QmsWebhook::create([
                    'content' => json_encode($data)
                ]);
                if(env('APP_DEBUG')){
                    $this->writeLogs(json_encode($data));
                }
                $array = explode(",", $data);

                if (isset($array[0])) {
                    if ($array[0] == 'downloadStatus') {
                        if (isset($array[1])) {
                            $action = ActionQueue::where('id', $array[1])->with('device')->first();
                            if ($action->started_at == null) {
                                $action->started_at = Carbon::now();
                                $action->update();
                            }
                        }
                        Cache::put('udp_data', $action->device_id . ',' . $array[2]);
                        if ($array[2] >= 100 && isset($array[1])) {
                            $action->device->content_download_page = $array[2];
                            $action->device->update();
                            $action->completed_at = Carbon::now();
                            $action->update();
                            $nextAction = ActionQueue::whereNull('started_at')->whereNull('requested_at')->with('device')->orderBy('order', 'ASC')->first();
                            if ($nextAction && $nextAction->device && $nextAction->device->ip_address) {
                                $nextAction->requested_at = Carbon::now();
                                $nextAction->update();
                                $nextAction->device->content_download_page = 0;
                                $nextAction->device->update();
                                $response = writeOnUdp($nextAction->device->ip_address, "updateContent," . $nextAction->id);
                            }
                        } else if (isset($array[3])) {
                            $device = Device::where('id', $array[3])->first();
                            if ($device) {
                                $device->content_download_page = 0;
                                $device->update();
                            }
                        }
                    } elseif ($array[0] == 'pong') {
                        $device = Device::where('id', $array[1])->first();
                        if ($device) {
                            $device->is_online = 1;
                            $device->total_pings = 0;
                            $device->update();
                        }
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