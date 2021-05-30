<?php

namespace App\Helpers;

use App\Models\Product;

class Myhelper
{
    public static function minPrice()
    {

        return floor(Product::min('regular_price'));
    }

    public static function maxPrice()
    {

        return floor(Product::max('regular_price'));
    }

    public static function select($aaa)
    {

        //return dd($aaa);
    }

    public static $sorting;


    public static $aaa = 1;






    public function mount()
    {
        $this->aaa = 30;
        self::$sorting="laith";

    }
}
