@echo off

REM Define variables
set HOST=192.168.1.226
set PORT=8000
set ARTISAN_DIR=D:\SWANTECH GITHUB\Al-Yalayis
set ARTISAN_COMMAND=php artisan

REM Change to the directory where artisan is located
cd /d %ARTISAN_DIR%
if errorlevel 1 (
    echo Failed to change directory to %ARTISAN_DIR%
    pause
    exit /b
)

REM Start the Laravel development server on the specified host and port
start "Laravel Server" cmd /k "%ARTISAN_COMMAND% serve --host=%HOST% --port=%PORT%"
if errorlevel 1 (
    echo Failed to start Laravel development server
    pause
    exit /b
)

REM Start the UDP listener
start "UDP Listener" cmd /k "%ARTISAN_COMMAND% udp:listen"
if errorlevel 1 (
    echo Failed to start UDP listener
    pause
    exit /b
)

REM Start the Laravel Echo server
start "Laravel Echo Server" cmd /k "npx laravel-echo-server start"
if errorlevel 1 (
    echo Failed to start Laravel Echo server
    pause
    exit /b
)

REM Keep the main command prompt window open
pause
