<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permission::create(['name' => 'zones']);
        Permission::create(['name' => 'create_zones']);
        Permission::create(['name' => 'update_zones']);
        Permission::create(['name' => 'delete_zones']);
        Permission::create(['name' => 'assign_zones']);
        Permission::create(['name' => 'cities']);
        Permission::create(['name' => 'create_cities']);
        Permission::create(['name' => 'update_cities']);
        Permission::create(['name' => 'delete_cities']);
        Permission::create(['name' => 'assign_cities']);
        Permission::create(['name' => 'branches']);
        Permission::create(['name' => 'create_branches']);
        Permission::create(['name' => 'update_branches']);
        Permission::create(['name' => 'delete_branches']);
        Permission::create(['name' => 'assign_branches']);
        Permission::create(['name' => 'device_groups']);
        Permission::create(['name' => 'create_device_groups']);
        Permission::create(['name' => 'update_device_groups']);
        Permission::create(['name' => 'delete_device_groups']);
        Permission::create(['name' => 'assign_device_groups']);
        Permission::create(['name' => 'devices']);
        Permission::create(['name' => 'create_devices']);
        Permission::create(['name' => 'update_devices']);
        Permission::create(['name' => 'users']);
        Permission::create(['name' => 'create_users']);
        Permission::create(['name' => 'update_users']);
        Permission::create(['name' => 'delete_users']);
        Permission::create(['name' => 'device_templates']);
        Permission::create(['name' => 'create_device_templates']);
        Permission::create(['name' => 'update_device_templates']);
        Permission::create(['name' => 'delete_device_templates']);
        Permission::create(['name' => 'schedules']);
        Permission::create(['name' => 'create_schedules']);
        Permission::create(['name' => 'update_schedules']);
        Permission::create(['name' => 'delete_schedules']);
        
        
    }
}
