@echo off

REM Define variables
set HOST=192.168.1.244
set PORT=8000
set ARTISAN_DIR=D:\SWANTECH GITHUB\DSSv2
set ARTISAN_COMMAND=php artisan

REM Change to the directory where artisan is located
cd /d %ARTISAN_DIR%

REM Clear the cache
%ARTISAN_COMMAND% cache:clear

REM Clear the configuration cache
%ARTISAN_COMMAND% config:clear

REM Start the Laravel development server on the specified host and port
start "" %ARTISAN_COMMAND% serve --host=%HOST% --port=%PORT%

REM Start the UDP listener
start "" %ARTISAN_COMMAND% udp:listen

REM Wait for key press to close the command prompt window
pause