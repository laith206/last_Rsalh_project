<?php

namespace App\Http\Livewire;

use App\Models\Category;
use Livewire\Component;

class Homeproductcategories extends Component
{
    public function render()
    {
        $categories = Category::all();
        return view('livewire.homeproductcategories',['categories'=>$categories]);
    }
}
