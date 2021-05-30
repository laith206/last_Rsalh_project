@extends('layouts.base')

@section('main')

    <!-- START SECTION BANNER -->
    <div class="banner_section slide_medium shop_banner_slider staggered-animation-wrap">
        <div id="carouselExampleControls" class="carousel slide carousel-fade light_arrow" data-ride="carousel">
            <div class="carousel-inner">
                @foreach ($sliders as $key => $slider)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }} background_bg"
                        data-img-src="{{ asset('assets/images/sliders') }}/{{ $slider->image }}">
                        <div class="banner_slide_content">
                            <div class="container">
                                <!-- STRART CONTAINER -->
                                <div class="row">
                                    <div class="col-lg-7 col-9">
                                        <div class="banner_content overflow-hidden">
                                            <h5 class="mb-3 staggered-animation font-weight-light"
                                                data-animation="slideInLeft" data-animation-delay="0.5s">
                                                {{ $slider->title }}</h5>
                                            <h2 class="staggered-animation" data-animation="slideInLeft"
                                                data-animation-delay="1s">{{ $slider->subtitle }}</h2>
                                            <a class="btn btn-fill-out rounded-0 staggered-animation text-uppercase"
                                                href="{{ $slider->link }}" data-animation="slideInLeft"
                                                data-animation-delay="1.5s">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- END CONTAINER-->
                        </div>
                    </div>
                @endforeach


            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"><i
                    class="ion-chevron-left"></i></a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"><i
                    class="ion-chevron-right"></i></a>
        </div>
    </div>
    <!-- END SECTION BANNER -->
    <!-- END MAIN CONTENT -->
    <div class="main_content">

        <!-- START SECTION BANNER -->
        <div class="section pb_20">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="single_banner">
                            <img src="{{ asset('assets/images/shop_banner_img1.jpg') }}" alt="shop_banner_img1" />
                            <div class="single_banner_info">
                                <h5 class="single_bn_title1">Super Sale</h5>
                                <h3 class="single_bn_title">New Collection</h3>
                                <a href="shop-left-sidebar.html" class="single_bn_link">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="single_banner">
                            <img src="{{ asset('assets/images/shop_banner_img2.jpg') }}" alt="shop_banner_img2" />

                            <div class="single_banner_info">
                                <h3 class="single_bn_title">New Season</h3>
                                <h4 class="single_bn_title1">Sale 40% Off</h4>
                                <a href="shop-left-sidebar.html" class="single_bn_link">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SECTION BANNER -->

    <!-- START SECTION SHOP -->
    <div class="section small_pt pb_70">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="heading_s1 text-center">
                        <h2>Exclusive Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="tab-style1">
                        <ul class="nav nav-tabs justify-content-center" role="tablist">
                            @foreach ($categories as $key => $category)
                                <li class="nav-item">
                                    <a href="#category_{{ $category->id }}" data-toggle="tab" role="tab"
                                        aria-controls="arrival" class="nav-link {{ $key == 0 ? 'active' : '' }}">
                                        {{ $category->name }}
                                    </a>
                                </li>

                            @endforeach


                        </ul>
                    </div>
                    <div class="tab-content">
                        @foreach ($categories as $key => $category)
                            <div class="tab-pane fade {{ $key == 0 ? 'show active' : '' }}"
                                id="category_{{ $category->id }}" role="tabpanel" aria-labelledby="arrival-tab">
                                <div class="row shop_container">
                                    @php
                                        $c_products = DB::table('products')
                                            ->where('category_id', $category->id)
                                            ->get()
                                            ->take($products_no);
                                    @endphp
                                    @foreach ($c_products as $c_product)
                                        <div class="col-lg-3 col-md-4 col-6">
                                            <div class="product">
                                                <div class="product_img">
                                                    <a href="{{ route('product.details', $c_product->slug) }}"
                                                        title="{{ $c_product->name }}">
                                                        <img src="{{ asset('assets/images/products/' . $c_product->image) }}"
                                                            alt="{{ $c_product->name }}">
                                                    </a>
                                                    <div class="product_action_box">
                                                        <ul class="list_none pr_action_btn">
                                                            <li class="add-to-cart"><a href="#"><i
                                                                        class="icon-basket-loaded"></i> Add To Cart</a></li>
                                                            <li><a href="shop-compare.html" class="popup-ajax"><i
                                                                        class="icon-shuffle"></i></a></li>
                                                            <li><a href="shop-quick-view.html" class="popup-ajax"><i
                                                                        class="icon-magnifier-add"></i></a></li>
                                                            <li><a href="#"><i class="icon-heart"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product_info">
                                                    <h6 class="product_title"><a
                                                            href="{{ route('product.details', $c_product->slug) }}">{{ $c_product->name }}</a>
                                                    </h6>
                                                    <div class="product_price">
                                                        <span class="price">{{ $c_product->regular_price }}</span>
                                                        <del>{{ $c_product->sale_price }}</del>
                                                        <div class="on_sale">
                                                            <span>35% Off</span>
                                                        </div>
                                                    </div>
                                                    <div class="rating_wrap">
                                                        <div class="rating">
                                                            <div class="product_rate" style="width:80%"></div>
                                                        </div>
                                                        <span class="rating_num">(21)</span>
                                                    </div>
                                                    <div class="pr_desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                            Phasellus blandit massa enim. Nullam id varius nunc id varius
                                                            nunc.</p>
                                                    </div>
                                                    <div class="pr_switch_wrap">
                                                        <div class="product_color_switch">
                                                            <span class="active" data-color="#87554B"></span>
                                                            <span data-color="#333333"></span>
                                                            <span data-color="#DA323F"></span>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>


                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END SECTION SHOP -->




    <!-- START SECTION SINGLE BANNER -->
    <div class="section bg_light_blue2 pb-0 pt-md-0">
        <div class="container">
            <div class="row align-items-center flex-row-reverse">
                <div class="col-md-6 offset-md-1">
                    <div class="medium_divider d-none d-md-block clearfix"></div>
                    <div class="trand_banner_text text-center text-md-left">
                        <div class="heading_s1 mb-3">
                            <span class="sub_heading">New season trends!</span>
                            <h2>Best Summer Collection</h2>
                        </div>
                        <h5 class="mb-4">Sale Get up to 50% Off</h5>
                        <a href="shop-left-sidebar.html" class="btn btn-fill-out rounded-0">Shop Now</a>
                    </div>
                    <div class="medium_divider clearfix"></div>
                </div>
                <div class="col-md-5">
                    <div class="text-center trading_img">
                        <img src="{{ asset('assets//images/tranding_img.png') }}" alt="tranding_img">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SECTION SINGLE BANNER -->

    <!-- START SECTION SHOP -->
    <div class="section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="heading_s1 text-center">
                        <h2>Featured Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true"
                        data-dots="false" data-nav="true" data-margin="20"
                        data-responsive='{"0":{"items": "1" }, "481" :{"items": "2" }, "768" :{"items": "3" }, "1199" :{"items": "4" }}'>



                        @foreach ($Featured_producte as $Feat_prod)
                            <div class="item">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="{{ route('product.details', ['slug' => $Feat_prod->slug]) }}">
                                            <img src="{{ asset('assets/images/products') }}/{{ $Feat_prod->image }}"
                                                alt="{{ $Feat_prod->name }}">
                                        </a>
                                        <div class="product_action_box">
                                            <ul class="list_none pr_action_btn">
                                                <li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i>
                                                        Add To Cart</a></li>
                                                <li><a href="shop-compare.html" class="popup-ajax"><i
                                                            class="icon-shuffle"></i></a></li>
                                                <li><a href="shop-quick-view.html" class="popup-ajax"><i
                                                            class="icon-magnifier-add"></i></a></li>
                                                <li><a href="#"><i class="icon-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_info">
                                        <h6 class="product_title"><a
                                                href="{{ route('product.details', ['slug' => $Feat_prod->slug]) }}">{{ $Feat_prod->name }}</a>
                                        </h6>
                                        <div class="product_price">
                                            <span class="price">{{ $Feat_prod->regular_price }}</span>
                                            <del>{{ $Feat_prod->cale_price }}</del>
                                            <div class="on_sale">
                                                <span>35% Off</span>
                                            </div>
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:80%"></div>
                                            </div>
                                            <span class="rating_num">(21)</span>
                                        </div>
                                        <div class="pr_desc">
                                            <p>{{ $Feat_prod->short_description }}.</p>
                                        </div>
                                        <div class="pr_switch_wrap">
                                            <div class="product_color_switch">
                                                <span class="active" data-color="#87554B"></span>
                                                <span data-color="#333333"></span>
                                                <span data-color="#DA323F"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SECTION SHOP -->


    <!-- START SECTION SHOP -->
    @if ($products_sale->count() > 0 && $sale->status==1 && $sale->sale_date > Carbon\Carbon::now() )
    <div class="section small_pt small_pb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading_tab_header">
                        <div class="heading_s2">
                            <h2>Deal Of The Days</h2>
                        </div>
                        <div class="deal_timer">
                            <div class="countdown_time countdown_style1" data-time="{{ Carbon\Carbon::parse($sale->sale_date)->format('Y/m/d h:m:s ')  }}"></div>
                        </div>
                    </div>
                </div>
            </div>

    <div class="row">
                <div class="col-md-12">
                    <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true"
                        data-dots="false" data-nav="true" data-margin="20"
                        data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                        @foreach ($products_sale as $prod_sale)
                            <div class="item">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="{{ route('product.details',['slug'=>$prod_sale->slug]) }}">
                                            <img src="{{ 'assets/images/products' }}/{{ $prod_sale->image }}"
                                                alt="product_img1">
                                        </a>
                                        <div class="product_action_box">
                                            <ul class="list_none pr_action_btn">
                                                <li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add
                                                        To Cart</a></li>
                                                <li><a href="shop-compare.html" class="popup-ajax"><i
                                                            class="icon-shuffle"></i></a></li>
                                                <li><a href="shop-quick-view.html" class="popup-ajax"><i
                                                            class="icon-magnifier-add"></i></a></li>
                                                <li><a href="#"><i class="icon-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_info">
                                        <h6 class="product_title"><a
                                                href="{{ route('product.details',['slug'=>$prod_sale->slug]) }}">{{ $prod_sale->name }}</a></h6>

                                        <div class="product_price">
                                            <span class="price">{{ $prod_sale->regular_price }}</span>
                                            <del>{{ $prod_sale->sale_price }}</del>
                                            <div class="on_sale">
                                                <span>35% Off</span>
                                            </div>
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:80%"></div>
                                            </div>
                                            <span class="rating_num">(21)</span>
                                        </div>
                                        <div class="pr_desc">
                                            <p>{{ $prod_sale->short_description }}.</p>
                                        </div>
                                        <div class="pr_switch_wrap">
                                            <div class="product_color_switch">
                                                <span class="active" data-color="#87554B"></span>
                                                <span data-color="#333333"></span>
                                                <span data-color="#DA323F"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            @else
            <h1>no sale</h1>
            @endif

        </div>
    </div>
    <!-- END SECTION SHOP -->

    <!-- START SECTION TESTIMONIAL -->
    <div class="section bg_redon">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="heading_s1 text-center">
                        <h2>Our Client Say!</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <div class="testimonial_wrap testimonial_style1 carousel_slider owl-carousel owl-theme nav_style2"
                        data-nav="true" data-dots="false" data-center="true" data-loop="true" data-autoplay="true"
                        data-items='1'>
                        <div class="testimonial_box">
                            <div class="testimonial_desc">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi
                                    blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi
                                    nam natus perferendis possimus quasi sint sit tempora voluptatem.</p>
                            </div>
                            <div class="author_wrap">
                                <div class="author_img">
                                    <img src="{{ asset('assets/images/user_img1.jpg') }}" alt="user_img1">
                                </div>
                                <div class="author_name">
                                    <h6>Lissa Castro</h6>
                                    <span>Designer</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial_box">
                            <div class="testimonial_desc">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi
                                    blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi
                                    nam natus perferendis possimus quasi sint sit tempora voluptatem.</p>
                            </div>
                            <div class="author_wrap">
                                <div class="author_img">
                                    <img src="{{ asset('assets/images/user_img2.jpg') }}"
                                        alt="user_img2" ' )}}" />
                                            </div>
                                            <div class="author_name">
                                                <h6>Alden Smith</h6>
                                                <span>Designer</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="testimonial_box">
                                        <div class="testimonial_desc">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi
                                                blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi
                                                nam natus perferendis possimus quasi sint sit tempora voluptatem.</p>
                                        </div>
                                        <div class="author_wrap">
                                            <div class="author_img">
                                                <img src="{{ asset('assets/images/user_img3.jpg') }}"
                                                    alt="user_img3" >
                                                                                </div>
                                                                                <div class="author_name">
                                                                                    <h6>Daisy Lana</h6>
                                                                                    <span>Designer</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="testimonial_box">
                                                                            <div class="testimonial_desc">
                                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi
                                                                                    blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi
                                                                                    nam natus perferendis possimus quasi sint sit tempora voluptatem.</p>
                                                                            </div>
                                                                            <div class="author_wrap">
                                                                                <div class="author_img">
                                                                                    <img src="{{ asset('assets/images/user_img4.jpg') }}" alt="user_img4" ' )}}" />
                                </div>
                                <div class="author_name">
                                    <h6>John Becker</h6>
                                    <span>Designer</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SECTION TESTIMONIAL -->

    <!-- START SECTION SHOP INFO -->
    <div class="section pb_70">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-4">
                    <div class="icon_box icon_box_style1">
                        <div class="icon">
                            <i class="flaticon-shipped"></i>
                        </div>
                        <div class="icon_box_content">
                            <h5>Free Delivery</h5>
                            <p>If you are going to use of Lorem, you need to be sure there anything</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="icon_box icon_box_style1">
                        <div class="icon">
                            <i class="flaticon-money-back"></i>
                        </div>
                        <div class="icon_box_content">
                            <h5>30 Day Return</h5>
                            <p>If you are going to use of Lorem, you need to be sure there anything</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="icon_box icon_box_style1">
                        <div class="icon">
                            <i class="flaticon-support"></i>
                        </div>
                        <div class="icon_box_content">
                            <h5>27/4 Support</h5>
                            <p>If you are going to use of Lorem, you need to be sure there anything</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SECTION SHOP INFO -->

    <!-- START SECTION SUBSCRIBE NEWSLETTER -->
    <div class="section bg_default small_pt small_pb">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="heading_s1 mb-md-0 heading_light">
                        <h3>Subscribe Our Newsletter</h3>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="newsletter_form">
                        <form>
                            <input type="text" required="" class="form-control rounded-0" placeholder="Enter Email Address">
                            <button type="submit" class="btn btn-dark rounded-0" name="submit"
                                value="Submit">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- START SECTION SUBSCRIBE NEWSLETTER -->

    </div>
    <!-- END MAIN CONTENT -->
@endsection
