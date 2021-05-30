<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\HomeCategory;
use App\Models\HomeSlider;
use App\Models\Product;
use App\Models\Sale;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        Category::factory(6)->create();
        Product::factory(22)->create();
        HomeCategory::create([
           'select_categories' => '1,2,3,4,5,6',
            'products_no'=> 8
        ]);

        User::create([
            'name' => 'Admin',
            'email' => 'Admin@Admin.com',
            'password' => Hash::make(123456),
            'utype'=> 'ADM'
        ]);


        $newDateTime = Carbon::now()->addDays(5);
        Sale::create([
            'sale_date'=> $newDateTime ,
            'status'=>1
        ]);

          HomeSlider::create([
            'title' => 'title',
            'subtitle' => 'subtitle',
            'price' => 300,
            'status' => 1,
            'link' => 'link',
            'image' => 'nb_sdm_cover.jpg',
        ]
    );


    }
}
