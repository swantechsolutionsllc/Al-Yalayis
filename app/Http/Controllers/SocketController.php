<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Ratchet\MessageComponentInterface as MessageComponentInterface;
use Ratchet\ConnectionInterface;
use App\Device;
use Carbon\Carbon;
use DB;
class SocketController extends Controller implements MessageComponentInterface
{
    protected $clients;
    private $loop;
    public function __construct(){
        $this->clients = new \SplObjectStorage;
    }
    public function onOpen(ConnectionInterface $conn) {
        $querystring = $conn->httpRequest->getUri()->getQuery();
        parse_str($querystring, $get_array);
        if(isset($get_array['token'])){
            $device = Device::where('socket_token', $get_array['token'])->first();
            if($device){
                // foreach($this->clients as $client){
                //     if($client->connected_id == $device->id && $client->connected_type == 'device'){
                //        // echo "already connected before new connection removing it\n";
                //         $device->is_online = 0;
                //         $device->update();
                //         $msg = [
                //             'command'   => 'online-status',
                //             'id'        => $device->id,
                //             'status'    => 'offline',
                //             'name'      => $device->device_name
                //         ];
                //         $this->sendMessage(['dashboard'], json_encode($msg));
                //     }
                // }
                $conn->last_heartbeat_sent_at = Carbon::now();
                //echo "Establishing New Connection for deivce ".$device->device_name." \n";
                $device->is_online = 1; 
                $device->update();
                $conn->connected_id     = $device->id;
                $conn->connected_type   = 'device';
                $conn->connected_name   = $device->device_name;
                $conn->device_type      = $device->device_type;
                $conn->send("connected-successfully");
                $this->clients->attach($conn);
                
                $msg = [
                    'command'   => 'online-status',
                    'id'        => $conn->connected_id,
                    'status'    => 'online',
                    'name'      => $device->device_name
                ];
                
                $this->sendMessage(['dashboard'], json_encode($msg));
                
            }else{
                $conn->send("invalid-prams");
                $conn->close();
            }            
        } elseif(isset($get_array['type']) && $get_array['type'] == 'dashboard'){
            echo "dashboard connected\n";
            $id   = $get_array['id'];
            $conn->connected_id = $id;
            $conn->connected_type = 'dashboard';
            $this->clients->attach($conn);
        }else{
            $conn->send("invalid-prams");
            $conn->close();
        }
        
    }
    public function onClose(ConnectionInterface $conn) {
        if($conn->connected_type == 'device'){
            $this->updateDeviceStatus($conn->connected_id, 'is_online', 0);
            $msg = [
                'command'   => 'online-status',
                'id'        => $conn->connected_id,
                'status'    => 'offline',
                'name'      => $conn->connected_name
            ];
            $this->sendMessage(['dashboard'], json_encode($msg));
        }
        $this->clients->detach($conn);
        $conn->close();
    }
    public function onMessage(ConnectionInterface $from, $msg) {
      //  echo "New Message to user";
        $message = json_decode($msg);
        if($message->type == 'sendtodevice'){
            foreach( $this->clients as $client ) {
                if ($client->connected_type == 'device' && $client->connected_id == $message->device_id) {
                    $client->send($message->action);
                    if($message->action == 'update-content'){
                        $this->updateDeviceStatus($message->device_id, 'last_content_update_sent', Carbon::now());
                        $this->updateDeviceStatus($message->device_id, 'content_download_status', 0);
                    }
                }
            }
        }elseif($message->type == 'heartbeat'){
            foreach( $this->clients as $client ) {
                if ($client->connected_type == 'device' && $client->connected_id == $from->connected_id) {
                    $client->last_heartbeat_sent_at = Carbon::now();
                }
            }
            
        }elseif($message->type == 'checkheartbeat'){
            foreach( $this->clients as $client ) {
                if ($client->connected_type == 'device') {
                    $to     = Carbon::parse($client->last_heartbeat_sent_at, 'Asia/Dubai');
                    $from   = Carbon::now('Asia/Dubai');
                    $diffInMinutes = $to->diffInMinutes($from);
                     echo "TO => ".$to." \n";
                     echo "FROM => ".$from." \n";
                     echo "DIfference => ".$diffInMinutes." \n";
                    if($diffInMinutes >= 2){
                        $this->onClose($client);
                    }
                }
            }
        }elseif($message->type == 'sendtocounters'){
            foreach( $this->clients as $client ) {
                if ($client->connected_type == 'device' && $client->device_type =='cd') {
                    $client->send($message->data);
                }
            }
        }elseif($message->type == 'all'){
            foreach( $this->clients as $client ) {
                    $client->send($message->data);
                
            }
        }else{
            $columns = [
                'asset'     => 'current_running_asset',
                'storage'   => 'memory_status',
                'installed' => 'application_installed',
                'download-percentage'   => 'content_download_status',
                'completed' => 'last_content_completed_at'

            ];
            $m = [
                'command'   => $message->type,
                'id'        => $from->connected_id,
                'value'     => $message->value
            ];
            // DB::table('socket_message_logs')->insert([
            //     'device_id' => $from->connected_id,
            //     'message_content'=>json_encode($m)
            // ]);
             foreach( $this->clients as $client ) {
                if ($client->connected_type == 'device' && $client->connected_id == $from->connected_id) {
                    $client->last_heartbeat_sent_at = Carbon::now();
                }
            }
            $this->sendMessage(['dashboard'], json_encode($m));
            if(isset($columns[$message->type])){
                $this->updateDeviceStatus($from->connected_id, $columns[$message->type], $message->value);
            }
            if($message->type == 'download-percentage' ){
                if($message->value >= 100){
                    $this->updateDeviceStatus($from->connected_id,'content_download_completed_at', Carbon::now());
                }
            }
        }
        // foreach( $this->clients as $client ) {
        //     if ($client->connected_type == 'device') {
        //         echo $client->last_heartbeat_sent_at."  \n";
        //         echo Carbon::now()."  \n";
        //     }     
        // }

    }
    public function onError(ConnectionInterface $conn, \Exception $e) {
        echo $e->getMessage();
    }
    private function updateDeviceStatus($id,$column, $value){
        $device = Device::where('id', $id)->first();
       // echo $column;
        if($device){
            $device[$column] = $value;
            $device->update();
            return $device->device_name;
        }else{
            return false;
        }
    }
    public function sendMessage($to, $msg){
    //    echo "sending message to ";
        foreach( $this->clients as $client ) {
            if (in_array($client->connected_type, $to)) {
                $client->send($msg);
            }
        }
    } 
}
