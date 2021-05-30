<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Livewire\WithPagination;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }


    public function dashbord_index()
    {
        return view('admin.admin-dashboard');
    }

    public function Admin_category()
    {
        $categorie=Category::paginate(5);
        //return dd($categorie);
       // return view('details'          ,['product'=>$product]);
       return view('admin.admin-category',['categorie'=>$categorie]);
    }

    public function Admin_Editcategory($slug)
    {
        return view();
    }


    public function Admin_delete_category($id)
    {
        $category =Category::find($id);
        $category->delete($category);
        session()->flash('message','Category has been deleted successfuly');
        return redirect()->route('admin.categories');

    }
    public function generateslug($slug)
    {
        $this->slug=Str::slug($this->name);
        dd($slug);
    }



    public function Add_category(Request $requst)
    {



        dd($requst);
       /*  $slug="";
        $name="";

            $this->slug=Str::slug($this->name);
            $category= new Category;
            $category->name=$this->name;
            $category->slug=$this->slug;
            $category->save();
            session()->flash('message','Category has been created successfuly'); */


    }












    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
