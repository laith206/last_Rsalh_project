<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeCategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\HomeSliderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\testcontroller;
use App\Http\Controllers\UserController;
use App\Http\Livewire\Homeproductcategories;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

 Route::get('/', function () {
     return Inertia::render('Welcome', [
         'canLogin' => Route::has('login'),
         'canRegister' => Route::has('register'),
         'laravelVersion' => Application::VERSION,
         'phpVersion' => PHP_VERSION,
     ]);
 });

 Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
     return view('/dashboard');
 })->name('dashboard');




Route::get('/',[HomeController::class,'index'])->name('home');


Route::get('/test',[testcontroller::class,'test']);




//Route::get('', Homeproductcategories::class);

Route::get('/Shop',[ShopController::class,'index'])->name('shop');

Route::get('/product/{slug}',[HomeController::class,'details'])->name('product.details');

Route::get('/cart',[HomeController::class,'index_cart'])->name('product.cart');
Route::get('/cart/{id}/{name}/{price}',[HomeController::class,'store'])->name('product.add.cart');




// for user and costemar
Route::middleware(['auth:sanctum', 'verified'])->group(function () {
     Route::get('/user/dashbord',[UserController::class,'dashbord_index'])->name('user.dashbord');

});


// for admin
Route::middleware(['auth:sanctum', 'verified','adminauth'])->group(function () {

     Route::get('/admin/dashbord',[AdminController::class,'dashbord_index'])->name('admin.dashbord');
     Route::resource('/admin/categories', CategoryController::class);
     Route::resource('/admin/products', ProductController::class);
     Route::resource('/admin/homeslider', HomeSliderController::class);


     // admin.homecategories
     Route::get('/admin/home-categories', [HomeCategoryController::class, 'index'])->name('Homecategories.index');
     Route::POST('/admin/update-home-categories', [HomeCategoryController::class, 'update'])->name('Homecategories.update');

     Route::POST('/Shop/filter_price', [ShopController::class,'index'])->name('filter_price');
     Route::POST('/Shop/filter_byprice', [ShopController::class,'index'])->name('filter_byprice');
     Route::get('/sale', [SaleController::class,'index'])->name('sale_timer');
     Route::post('/sale/update', [SaleController::class,'update'])->name('sale_timer_update');










    //  Route::get('/admin/categories','/admin/categories,'Admin_category'])->name('admin.categories');



    //  Route::get('/admin/categories/Add',function(){return view('admin.admin-add-category');})->name('admin.Addcategories');
    //  //Route::get('/admin/categories/Add',[AdminController::class,'Add_category'])->name('admin.Addcategories');
    //  Route::get('/admin/categories/Edit/{category_slug}',[AdminController::class,'Admin_Editcategory'])->name('admin.Editcategories');
    //  Route::get('/admin/categories/{id}',[AdminController::class,'Admin_delete_category'])->name('admin.delete.categories');



    // Route::get('/admin/Products/',AdminProductcomponet::class)->name('admin.Products');
    // Route::get('/admin/product/add', AdminaddProductcomponet::class)->name('admin.addproduct');
    // Route::get('/admin/product/edit/{product_slug}', AdminEditProductcomponet::class)->name('admin.editproduct');


    //  Route::get('/admin/homeslider', AdminHomeSlidercomponet::class)->name('admin.homeslider');
    //  Route::get('/admin/homeslider/add', AdminaAddHomeSlidercomponet::class)->name('admin.addhomeslider');
    //  Route::get('/admin/homeslider/edit/{id}', AdminaEditHomeSlidercomponet::class)->name('admin.edithomeslider');
    //  Route::get('/admin/home-categories', AdminHomeCaregorycrcomponet::class)->name('admin.homecategory');

    // Route::get('/admin/sale', AdminSaleComponent::class)    ->name('admin.sale');
});
