<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Albums;
use App\Models\Artists;
use Faker\Factory as Faker;

class MySeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();
        // Read data from the CSV file
        $csvFile = fopen(database_path('referrence.csv'), 'r');
        $header = fgetcsv($csvFile); // Skip header

        while ($row = fgetcsv($csvFile)) {
            $artist = Artists::create([
                'name' => $row[0],
                'code' => $faker->unique()->uuid,
            ]);

            Albums::create([
                'name' => $row[1],
                'year' => $row[3],
                'sales' => $row[2],
                'artist_code' => $artist->code,
            ]);
            // Albums::create([
            //     'artist_code' => '3123',
            //     'name' => 'John Doe',
            //     'year' => 'john@example.com',
            //     'sales' => bcrypt('password'),
            // ]);
            // Artists::create([
            //     'name' => 'John Doe',
            //     'code' => '3123'
            // ]);
        }
    }
}
