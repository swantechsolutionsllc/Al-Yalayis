@echo off
set HOST=192.168.0.100
set PORT=8000
cd /d "D:\SWANTECH GITHUB\DSSv2"
php artisan serve --host=%HOST% --port=%PORT%