<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$categorie = Category::all();
        $categorie = Category::latest()->paginate(10);
        return view('admin.categories.admin-index-category', compact('categorie'));
        //dd($categorie);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('admin.categories.admin-add-category');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        // $category = Category::create($request->all());
        // return redirect()->route('categories.index')
        //     ->with('success', 'category added successflly');
        $slug = Str::slug($request->name, '-');
        $category = Category::create([
            'name' =>  $request->name,
            'slug' => $slug,

        ]);

        return redirect()->route('categories.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $category = Category::where('id', $id)->first();
        // if ($category === null) {
        //     return redirect()->back();
        // }
         // return dd($category);
        return view('admin.categories.admin-edit-category',compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $category= Category:: find($id);
        $this->validate($request,[
            'name' =>  'required',
        ]);
        $slug = Str::slug($request->name, '-');
        $category->name = $request->name;
        $category->slug=$slug;
        $category->save();
       // return redirect()->back() ;
      //  return dd($category);
        return redirect()->route('categories.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id)
    {
        $category = Category::find($id);
        $category->delete($id);
        return redirect()->route('categories.index');

    }
}
