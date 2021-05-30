<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\HomeCategory;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeCategoryController extends Controller
{

    public function render()
    {
        // //$categories = Category::all();
        // $homeCategory = HomeCategory::find(1);
        // $cats = explode(',', $homeCategory);
        // $categories = Category::whereIn('id', $cats)->get();
        // $products_no = $homeCategory->products_no;

        // return view('livewire.aaa', [
        // 'categories' => $categories,
        // 'products_no' => $products_no,]);

    }

    public function index()
    {
        $category = HomeCategory::find(1);
        $select_categories = explode(',',$category->select_categories);
        $products_no = $category->products_no;


        $categories = Category::all();
        //dd($select_categories,$category->select_categories,$products_no);


       return view('admin.categories.admin-home-caregory', ['categories' => $categories,'select_categories'=>$select_categories,'products_no'=>$products_no]);
    }



    public function update(Request $request)
    {


        $category = HomeCategory::find(1);
        $category->select_categories = implode(',', $request->categories);
        $category->products_no = $request->products_no;
        $category->save();
        return redirect()->route('Homecategories.index');
        session()->flash('message', 'Home Category Updated Successfully!');


        // $category->select_categories = implode(',', $request->categories);
        // $category->products_no = $this->products_no;
        // $category->save();
        // $category->products_no = $this->products_no;
        // $category->save();
        // session()->flash('message', 'Home Category Updated Successfully!');
        // dd($category->select_categories, $request->categories, $category);
    }



    // public $select_categories;
    // public $products_no;
    // public function mount(){
    //     $category = HomeCategory::find(1);
    //     $this->select_categories = explode(',',$category->select_categories);
    //     $this->products_no = $category->products_no;
    // }
    // public function updateHomeCategory(){
    //     $category = HomeCategory::find(1);
    //     $category->select_categories = implode(',',$this->select_categories);
    //     $category->products_no = $this->products_no;
    //     $category->save();
    //     session()->flash('message','Home Category Updated Successfully!');
    // }

}
