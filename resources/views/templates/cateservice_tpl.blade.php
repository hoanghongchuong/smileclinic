@extends('index')
@section('content')
<main class="main-section">

        <div class="clearfix"></div>

        <section class="service">

            <div class="container">

                <h2 class="title-tt">Dịch vụ của chúng tôi</h2>

                <div class="service-inner">
                    @foreach($cate_service as $item)
                    <div class="service-item">

                        <p class="service-image">

                            <a href="{!! asset('dich-vu/'.$item->alias) !!}" title="">

                                <img src="{{asset('upload/news/'.$item->photo)}}" alt="" title="">

                            </a>

                        </p>

                        <p class="service-text"><a href="dich-vu-danh-muc.html" title="">{{$item->name}}</a></p>
                    </div>
                    @endforeach
                </div>

            </div>

        </section>

        <div class="clearfix"></div>

        <section class="hot-product">

            <div class="container">

                <h2 class="title-tt">Sản phẩm mới nhập</h2>

                <div class="owl-carousel owl-theme product_slider">

                    <div class="group">

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp1.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp2.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                    </div>

                    <div class="group">

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp3.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp4.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                    </div>

                    <div class="group">

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp5.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp1.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="chitiet-tintuc.html" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                    </div>

                    <div class="group">

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp3.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="chitiet-tintuc.html" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                        <div class="hot-product_item">

                            <p class="hot-product_image">

                                <a href="" title=""><img src="{{asset('public/images/sp2.png')}}" alt="" title=""></a>

                            </p>

                            <p class="hot-product_text">

                                <a href="" title="">Viên Bổ Gan L-Aginin</a>

                            </p>

                        </div>

                    </div>.<div class="group">

                    <div class="hot-product_item">

                        <p class="hot-product_image">

                            <a href="" title=""><img src="{{asset('public/images/sp4.png')}}" alt="" title=""></a>

                        </p>

                        <p class="hot-product_text">

                            <a href="" title="">Viên Bổ Gan L-Aginin</a>

                        </p>

                    </div>

                    <div class="hot-product_item">

                        <p class="hot-product_image">

                            <a href="" title=""><img src="{{asset('public/images/sp2.png')}}" alt="" title=""></a>

                        </p>

                        <p class="hot-product_text">

                            <a href="" title="">Viên Bổ Gan L-Aginin</a>

                        </p>

                    </div>

                </div>

                </div>

            </div>

        </section>

        <section class="banner-ads">

            <a href="" title="">

                <img src="{{asset('public/images/thumb3.png')}}" title="" alt="">

            </a>

        </section>

    </main>

    <div class="clearfix"></div>
@endsection
