<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         $this->call(UserSeeder::class);
         $this->call(BranchSeeder::class);
         //$this->call(DeviceSeeder::class);
         $this->call(ZoneSeeder::class);
         $this->call(RolesSeeder::class);
         //$this->call(DeviceTemplateSeeder::class);
         $this->call(PermissionSeeder::class);
    }
}
