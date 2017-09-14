@extends('index')
@section('content')
<?php $product_list = Cache::get('product_list'); ?>
<section class="vk-content">
    <div class="vk-page product">
        <div class="container">
            <div class="vk-inner-wrapper">
                <div class="vk-inner-container">

                    <div class="vk-box-heading text-uppercase text-center mb-4">
                        <h1 class="vk-heading-page mb-3">{!! $title !!}</h1>
                        <img src="{!! asset('public/images/icon/1.png') !!}" alt="" class="d-inline-block img-fluid">
                    </div> <!--./vk-box-heading-->


                    <div class="vk-product">

                        <div class="vk-shop-cate row mb-5 ">


                            @foreach($product_list as $item)
                            <div class="col-lg-4 item">
                                <div class="vk-shop-cate-item ">
                                    <div class="vk-image-thumbnail">
                                        <div class="vk-img-frame">
                                            <div class=" line line-top"></div>
                                            <div class=" line line-bot"></div>
                                            <a href="{!! asset('san-pham/'.$item->alias) !!}" title="{!! $item->name !!}" class="vk-img d-flex align-items-start">
                                                <img src="{!! asset('upload/product/'.$item->photo) !!}" alt="{!! $item->name !!}">
                                                <span class="vk-title align-self-center text-center text-uppercase">{!! $item->name !!}</span>
                                            </a>

                                        </div>
                                    </div> <!--./vk-image-thumbnail-->
                                </div> <!--./vk-shop-special-item-->
                            </div> <!--./item-->
                            @endforeach


                        </div> <!--./vk-shop-cate-->

                        <div class="vk-divider _200"></div>

                        <div class="vk-shop-item-list row mt-4 mb-4 mb-lg-0 mt-lg-0">

                            @foreach($product as $item)
                            <div class="col-lg-4 col-md-6 item">
                                <div class="vk-shop-item ">
                                    <div class="vk-img-frame">
                                        <a href="{!! asset($item->alias.'.html') !!}" class="vk-img">
                                            <img src="{!! asset('upload/product/'.$item->photo) !!}" alt="">
                                        </a>
                                        <div class="vk-button">
                                            <a href="{!! asset($item->alias.'.html') !!}" class="vk-btn vk-btn-readmore">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div> <!--./vk-shop-special-item-->
                            </div> <!--./item-->
                            @endforeach
                        </div> <!--./vk-shop-item-list-->

                        {{ $product->links() }}

                    </div> <!--./vk-product-->


                </div> <!--./vk-inner-container-->
            </div> <!--./vk-inner-wrapper-->

        </div> <!--./container-->
    </div> <!--./product-->

</section>

@endsection
