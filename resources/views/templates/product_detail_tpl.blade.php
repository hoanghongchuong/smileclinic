@extends('index')
@section('content')
<section class="vk-content">
    <div class="vk-page product product-detail">
        <div class="container">
            <div class="vk-inner-wrapper">
                <div class="vk-inner-container">

                    <div class="vk-box-heading text-uppercase text-center mb-5">
                        <h2 class="vk-heading-page mb-3">Sản phẩm</h2>
                        <img src="{!! asset('public/images/icon/1.png') !!}" alt="" class="d-inline-block img-fluid">
                    </div> <!--./vk-box-heading-->


                    <div class="vk-product detail">
                        <div class="vk-shop-detail-top">
                            <div class="row">
                                <div class="col-lg-5 vk-left-content">
                                    <div class="vk-inner-content">
                                        <div class="vk-img-frame">
                                            <img src="{!! asset('upload/product/'.$product_detail->photo) !!}" alt="">
                                        </div>
                                    </div> <!--./vk-inner-content-->

                                </div> <!--./col-md-5-->

                                <div class="col-lg-7 vk-right-content">
                                    <div class="vk-inner-content">
                                        <div class="vk-shop-info">
                                            <h1 class="vk-title vk-heading-line text-uppercase"><span>{{ $product_detail->name }}</span>
                                            </h1>
                                            <ul class="vk-list vk-list-meta-info">
                                                <li>Chất liệu: {!! $product_detail->thuonghieu !!}</li>
                                                <li>Màu sắc: {!! $product_detail->baohanh !!}</li>
                                                <li>Size: {!! $product_detail->vanchuyen !!}</li>
                                                <li>Phụ kiện: {!! $product_detail->quatang !!}</li>
                                            </ul>


                                            <div class="vk-divider"></div>

                                            <div class="vk-info-content">
                                                <h3 class="vk-title">Thông tin sản phẩm</h3>
                                                {!! $product_detail->content !!}
                                                  <!-- <p>
                                                    <div class="addthis_toolbox addthis_default_style" style="margin-top:10px;">
                                                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                                    <a class="addthis_button_tweet"></a>
                                                    <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                                    <a class="addthis_counter addthis_pill_style"></a>
                                                    </div>
                                                    <script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
                                                    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52843d4e1ff0313a"></script>
                                                 </p> -->
                                            </div>


                                        </div> <!--./vk-shop-info-->
                                    </div> <!--./vk-inner-content-->
                                </div>  <!--./col-md-7-->
                            </div>
                        </div> <!--./vk-shop-detail-top-->

                        <div class="vk-shop-detail-bot vk-shop-related">
                            <h3 class="vk-title vk-heading-line text-uppercase"><span>Sản phẩm liên quan</span></h3>

                            <div class="vk-shop-related-list row">

                                @foreach($product_khac as $item)
                                <div class="col-lg-4 col-md-6 item">
                                    <div class="vk-shop-item ">
                                        <div class="vk-img-frame">
                                            <a href="{!! asset($item->alias.'.html') !!}" class="vk-img">
                                                <img src="{!! asset('upload/product/'.$item->photo) !!}" alt="{!! $item->name !!}">
                                            </a>
                                            <div class="vk-button">
                                                <a href="{!! asset($item->alias.'.html') !!}" class="vk-btn vk-btn-readmore">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div> <!--./vk-shop-special-item-->
                                </div> <!--./item-->
                                @endforeach
                            </div> <!--./vk-shop-related-list-->
                        </div> <!-- /.vk-shop-detail-bot -->


                    </div> <!--./vk-product-->


                </div> <!--./vk-inner-container-->
            </div> <!--./vk-inner-wrapper-->

        </div> <!--./container-->
    </div> <!--./product-->

</section>
@endsection
