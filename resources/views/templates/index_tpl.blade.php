@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $dichvu = Cache::get('dichvu');
?>

<main class="main-section">
    <section class="my-service">
        <div class="container">
            <p class="title-index text-center"><span>Dịch vụ của chúng tôi</span></p>
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <div class="myService-item">
                        <p class="myService-image">
                            <a href="chitiet-tintuc.html" title=""><img alt="" src="{{asset('public/images/dv2.png')}}" title=""> </a>
                        </p>
                        <p class="myService-text">
                            <a href="chitiet-tintuc.html" title="">Sản phẩm bảo vệ sức khỏe</a>
                        </p>
                        <p class="myService-desc">Every man sooner or later, confronts with the problem of damage of teeth and dentition.</p>
                    </div>
                </div>
                <div class="col-xs-12 col-md-4">
                    <div class="myService-item">
                        <p class="myService-image">
                            <a href="chitiet-tintuc.html" title=""><img alt="" src="{{asset('public/images/dv3.png')}}" title=""> </a>
                        </p>
                        <p class="myService-text">
                            <a href="chitiet-tintuc.html" title="">Canxi nano</a>
                        </p>
                        <p class="myService-desc">Every man sooner or later, confronts with the problem of damage of teeth and dentition.</p>
                    </div>
                </div>

                <div class="col-xs-12 col-md-4">
                    <div class="myService-item">
                        <p class="myService-image">
                            <a href="chitiet-tintuc.html" title=""><img alt="" src="{{asset('public/images/dv4.png')}}" title=""> </a>
                        </p>
                        <p class="myService-text">
                            <a href="chitiet-tintuc.html" title="">Sản phẩm khác</a>
                        </p>
                        <p class="myService-desc">Every man sooner or later, confronts with the problem of damage of teeth and dentition.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="news-index">
        <div class="container">
            <p class="title-index"><span>Tin tức</span></p>
            <div class="news-index_inner">
                <div class="row">
                    <div class="col-xs-12 col-md-4">
                        <div class="news-index_image">
                            <a href="" title=""><img src="{{asset('public/images/news-index.png')}}" alt="" title=""> </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-8">
                        <div class="news-index_text">
                            <h4 class="news-index_title"><a href="" title="">Nguy cơ mới về ung thư miệng</a> </h4>
                            <p class="date-upload">Ngày upload: 05/09/2016</p>
                            <p class="news-index_desc">Nhiều người cho rằng, nếu chừng nào ngủ dậy mà không vệ sinh được răng miệng sạch sẽ, họ sẽ không muốn làm gì và cũng không tự tin giao tiếp với ai. Thông thường mọi người thường có thói quen ngủ dậy đánh răng, sau đó ăn sáng và cứ thế đến trưa lại ăn. Thực ra, đó là quy trình không đúng. Đồ ăn trong buổi sáng sẽ bám vào răng và làm hỏng răng.
                            </p>
                            <p class="text-right read-more"><a href="" title="">Xem thêm</a> </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="project-index">
        <div class="container">
            <div class="owl-carousel  owl-theme project-slider">
                <div class="productIndex-item">
                    <div class="projectIndex-image">
                        <a href="chitiet-tintuc.html" title=""><img alt="" src="{{asset('public/images/project1.png')}}"></a>
                    </div>
                    <div class="projectIndex-text">
                        <a href="chitiet-tintuc.html" title="">Đánh răng là một hoạt động cần thiết  chúng ta đều phải thực hiện hàng ngày ngay cả trẻ nhỏ cũng vậy, tuy nhiên nếu đánh răng thôi vẫn chưa đủ mà cần phải thực hiện đánh răng đúng cách</a>
                    </div>
                </div>
                <div class="productIndex-item">
                    <div class="projectIndex-image">
                        <a href="chitiet-tintuc.html" title=""><img alt="" src="{{asset('public/images/project2.png')}}"></a>
                    </div>
                    <div class="projectIndex-text">
                        <a href="chitiet-tintuc.html" title="">Đánh răng là một hoạt động cần thiết  chúng ta đều phải thực hiện hàng ngày ngay cả trẻ nhỏ cũng vậy, tuy nhiên nếu đánh răng thôi vẫn chưa đủ mà cần phải thực hiện đánh răng đúng cách</a>
                    </div>
                </div>
                <div class="productIndex-item">
                    <div class="projectIndex-image">
                        <a href="chitiet-tintuc.html" title=""><img alt="" src="{{asset('public/images/project3.png')}}"></a>
                    </div>
                    <div class="projectIndex-text">
                        <a href="chitiet-tintuc.html" title="">Đánh răng là một hoạt động cần thiết  chúng ta đều phải thực hiện hàng ngày ngay cả trẻ nhỏ cũng vậy, tuy nhiên nếu đánh răng thôi vẫn chưa đủ mà cần phải thực hiện đánh răng đúng cách</a>
                    </div>
                </div>
                <div class="productIndex-item">
                    <div class="projectIndex-image">
                        <a href="chitiet-tintuc.html" title=""><img alt="" src="{{asset('public/images/project4.png')}}"></a>
                    </div>
                    <div class="projectIndex-text">
                        <a href="chitiet-tintuc.html" title="">Đánh răng là một hoạt động cần thiết  chúng ta đều phải thực hiện hàng ngày ngay cả trẻ nhỏ cũng vậy, tuy nhiên nếu đánh răng thôi vẫn chưa đủ mà cần phải thực hiện đánh răng đúng cách</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="register">
        <div class="container">
            <p class="title-index register-pdl"><span>Đăng ký nhận khuyến mại</span></p>
            <form class="form-register">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 register-pdl">
                            <input type="text" class="cf-input" placeholder="Họ tên" required="">

                            <input type="text" class="cf-input" placeholder="Email" required="">

                            <input type="text" class="cf-input" placeholder="Số điện thoại" required="">
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 register-pdr">
                        <textarea name="" id="" cols="30" rows="7" class="cf-input" placeholder="Nội dung" required=""></textarea>
                    </div>
                    <div class="col-xs-12 col-md-12 text-right">
                        <button class="cf-sub" type="submit">Đăng ký</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <section class="banner-ads">

        <a href="" title="">

            <img src="{{asset('public/images/thumb.png')}}" title="" alt="">

        </a>

    </section>
</main>
@endsection
