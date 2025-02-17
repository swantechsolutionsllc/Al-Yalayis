<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use App\ActionQueue;
class UpdateContentQueue extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'update-content-queue';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $fiveMinutesAgo = Carbon::now()->subMinutes(5);
        $ac = ActionQueue::where('requested_at', '<=', $fiveMinutesAgo)->whereNull('started_at')->whereNull('completed_at')->first();
        if($ac){
            $latestOrder = ActionQueue::orderBy('order', 'DESC')->first();
            $ac->order = $latestOrder->order + 1;
            $ac->requested_at = null;
            $ac->update(); 

            $action = ActionQueue::whereNull('started_at')->whereNull('requested_at')->with('device')->orderBy('order', 'ASC')->first();
            if($action && $action->device && $action->device->ip_address){
                $action->requested_at = Carbon::now();
                $action->update();
                $action->device->content_download_page = 0;
                $action->device->update();
                $response =  writeOnUdp($action->device->ip_address, "updateContent,".$action->id);                    
            } 
        }
    }
}
