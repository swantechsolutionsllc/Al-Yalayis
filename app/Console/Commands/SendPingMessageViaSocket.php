<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\QmsWebhook;
class SendPingMessageViaSocket extends Command
{
   
    
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'send:hearbeat';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'this command will execute every minute for hearbeat message to socket clients';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $data = QmsWebhook::create([
            'content' => json_encode(['message'=>'ping'])
        ]);
        $socketUrl = env('APP_SOCKET_URL').':'.env('APP_SOCKET_PORT');
        try {
            $client = new \WebSocket\Client("ws://".$socketUrl."?type=dashboard&id=1");
            $msg = (object)[
              
                "data"  => json_encode(['message'=>'ping']),
                "type"  => "all",
                
            ];
        
            $client->text(json_encode($msg));
        } catch (\WebSocket\ConnectionException $e) {
            echo "WebSocket Connection Exception: " . $e->getMessage();
        } catch (\Exception $e) {
            echo "An unexpected error occurred: " . $e->getMessage();
        }
    }
}
