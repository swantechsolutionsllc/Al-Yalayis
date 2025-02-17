<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Device;
class RestartApp extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'restart-application';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        try {
            
            $devices    = Device::whereNotNull('ip_address')->get();
            foreach($devices as $device){
                $response =  writeOnUdp($device->ip_address, "restart-app");
            }
        } catch (\Exception $e) {
            echo "An unexpected error occurred: " . $e->getMessage();
        }
    }
}
