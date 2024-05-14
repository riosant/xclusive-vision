<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 100; $i++) {
            DB::table('users')->insert([
                'role' => $faker->randomElement(['admin', 'user', 'agent']),
                'code' => $faker->regexify('[A-Za-z0-9]{6}'),
                'name' => $faker->name,
                'username' => $faker->unique()->userName,
                'email' => $faker->unique()->safeEmail,
                'mobile' => $faker->phoneNumber,
                'password' => bcrypt('password'), // Default password
                'dob' => $faker->date(),
                'created_by' => null, // Adjust as needed
                'updated_by' => null, // Adjust as needed
                'deleted_by' => null, // Adjust as needed
                'email_verified_at' => $faker->optional()->dateTimeThisMonth(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
