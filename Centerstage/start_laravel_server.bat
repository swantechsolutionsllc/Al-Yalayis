@echo off
set HOST=192.168.1.226
set PORT=8000
cd /d "D:\SWANTECH GITHUB\Al-Yalayis"
php artisan serve --host=%HOST% --port=%PORT%