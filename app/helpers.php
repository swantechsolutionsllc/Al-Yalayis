<?php
use \App\Branch;
use \App\Organization;
use \App\Zone;
use \App\City;
use \App\DeviceGroup;

    $_SESSION['licence'] = "$2y$12".'$KVfv7MVdXvy8lJI2A0L4HOUjmcr6ciyb'."/PNop4HVeH3/2Y8uxzx2S";
    $_SESSION['device_count'] = 5;

    function writeOnUdp($ip, $message){
       // dd($ip);
        $socket = @fsockopen("udp://$ip", 1051, $errno, $errstr); 
        if ($socket) {
            fwrite($socket, $message);
            fclose($socket);
           // dd($socket);
            return true;
        } else {
            dd( $errstr);
        }
    }