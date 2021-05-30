<?php

namespace App\Http\Livewire;

use App\Models\Category;
use App\Models\HomeCategory;
use Livewire\Component;

class Foo extends Component
{
    public function render()
    {
        //$categories = Category::all();
        $homeCategory = HomeCategory::find(1);
        $cats = explode(',', $homeCategory);
        $categories = Category::whereIn('id', $cats)->get();
        $products_no = $homeCategory->products_no;

        return view('livewire.aaa', [
        'categories' => $categories,
        'products_no' => $products_no,]);

    }
}

