<?php

namespace App\Http\Controllers;

use App\Models\HomeSlider;
use Illuminate\Http\Request;
use File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rules\Exists;

use function PHPUnit\Framework\fileExists;

class HomeSliderController extends Controller
{

    public function index()
    {
        $homeslider = HomeSlider::paginate(5);
        return view('admin.home_slider.home-slider', ['sliders' => $homeslider]);
    }


    public function create()
    {
        return view('admin.home_slider.add-home-slider');
    }


    public function store(Request $request)
    {

        $photo = $request->file('image');
        $newPhoto = time() . $photo->getClientOriginalName();
        $photo->move('assets/images/sliders', $newPhoto);



        $slider =  Homeslider::create([
            'title' => $request->title,
            'subtitle' => $request->subtitle,
            'price' => $request->price,
            'status' => $request->status,
            'link' => $request->link,
            'image' => $newPhoto,
        ]);



        return redirect()->route('homeslider.index');
    }

    public function show(HomeSlider $homeSlider)
    {
        //
    }


    public function edit($id)
    {

        // dd($id);
        $homeslider = HomeSlider::find($id);
        return view('admin.home_slider.edit-home-slider', compact('homeslider'));
    }


    public function update(Request $request, $id)
    {


        $homeslider = Homeslider::find($id);
        // $this->validate($request, [
        //     'name' =>  'required',
         //]);
         $newPhoto="";
         if($request->hasFile('newImage')){
             try {
                unlink(public_path('assets/images/sliders').'/'.$homeslider->image);
            } catch (\Throwable $th) {
                 //throw $th;
             }

            $photo = $request->file('newImage');
            $newPhoto = time().$photo->getClientOriginalName();
            $photo->move('assets/images/sliders',$newPhoto);
         }else{
            $newPhoto=$homeslider->image;
         }

         $homeslider->title = $request->title;
         $homeslider->subtitle = $request->subtitle;
         $homeslider->price = $request->price;
         $homeslider->status = $request->status;
         $homeslider->link = $request->link;

        $homeslider->image= $newPhoto;

        $homeslider->save();


        session()->flash('message', 'Slider Updated Successfully!');
        return redirect()->route('homeslider.index');

         //dd($request, $homeslider);
    }


    public function destroy($id)
    {
        $homeslider = Homeslider::find($id);



       $homeslider->delete();
        unlink(public_path('assets/images/sliders').'/'.$homeslider->image);


        return redirect()->route('homeslider.index');

         //     $olde = public_path('assets/images/sliders').'/'.$homeslider->image;
    //     $new=public_path('sliders/delete').'/'.$homeslider->image;
    // $photo=public_path('assets/images/sliders').'/'.$homeslider->image;

    //     if($photo){
    //         $photo->move('assets/images/sliders','fdfdf');


    //         dd('ok');
    //         /*
    //             Delete Multiple File like this way
    //             Storage::delete(['upload/test.png', 'upload/test2.png']);
    //         */
    //     }else{
    //         dd('File does not exists.');
    //     }


    //     if (Storage::exists('assets/images/sliders'.'/'.$homeslider->image)) {

    //    // dd($photo.'okokokokokoko',Storage::exists('assets/images/sliders').'/'.$homeslider->image);
    //        // Storage::delete('assets/images/sliders').'/'.$homeslider->image;
    //         dd('delet ok');
    //     }else {
    //         dd($photo,Storage::exists());        }

    //     $olde = public_path('sliders').'/'.$homeslider->image;
    //     $new=public_path('sliders/delete').'/'.$homeslider->image;
    //     Storage::copy($olde,  $new);
    //   // ->move( $olde, $new);


    //     $photo->copy('assets/images/sliders/', 'assets/images/sliders/delete');


    //    try {
    //     unlink(public_path('assets/images/sliders').'/'.$homeslider->image);
    // } catch (\Throwable $th) {
    //      //throw $th;
    //  }
    }
}
