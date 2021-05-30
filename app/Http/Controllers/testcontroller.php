<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class testcontroller extends Controller
{

    public function test()
    {

        $products = Product::orderBy('created_at', 'DESC')->paginate(10);
        return view('test',compact('products'));
    }
}
