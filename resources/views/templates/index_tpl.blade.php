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
                @foreach($cate_dichvu as $dv)
                <div class="col-xs-12 col-md-4">
                    <div class="myService-item">
                        <p class="myService-image">
                            <a href="{{url('dich-vu/'.$dv->alias)}}" title=""><img alt="" src="{{asset('upload/news/'.$dv->background)}}" title=""> </a>
                        </p>
                        <p class="myService-text">
                            <a href="{{url('dich-vu/'.$dv->alias)}}" title="">{{$dv->name}}</a>
                        </p>
                        <p class="myService-desc">{{$dv->mota}}</p>
                    </div>
                </div>
                @endforeach
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
                            <a href="{{ asset('tin-tuc/'.$hot_news[0]->alias.'.html') }}" title=""><img src="{{ asset('upload/news/'.$hot_news[0]->photo)}}" alt="" title=""> </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-8">
                        <div class="news-index_text">
                            <h4 class="news-index_title"><a href="{{ asset('tin-tuc/'.$hot_news[0]->alias.'.html') }}" title="">{{$hot_news[0]->name}}</a> </h4>
                            <p class="date-upload">Ngày upload: {{date('d/m/Y',strtotime($hot_news[0]->created_at))}}</p>
                            <p class="news-index_desc">{{$hot_news[0]->mota}}
                            </p>
                            <p class="text-right read-more"><a href="{{ asset('tin-tuc/'.$hot_news[0]->alias.'.html') }}" title="">Xem thêm</a> </p>
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
                @for($i=1; $i< count($hot_news); $i++)
                <div class="productIndex-item">
                    <div class="projectIndex-image">
                        <a href="{{ asset('tin-tuc/'.$hot_news[$i]->alias.'.html') }}" title="{{ $hot_news[$i]->name }}"><img alt="" src="{{ asset('upload/news/'.$hot_news[$i]->photo)}}"></a>
                    </div>
                    <div class="projectIndex-text">
                        <a href="{{ asset('tin-tuc/'.$hot_news[$i]->alias.'.html') }}" title="{{ $hot_news[$i]->name }}">{{ $hot_news[$i]->name }}</a>
                    </div>
                </div>
                @endfor
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="register">
        <div class="container">
            <p class="title-index register-pdl"><span>Đăng ký nhận khuyến mại</span></p>
            <form class="form-register" method="post" action="{{ route('postNewsletter') }}">
             
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 register-pdl">
                            <input type="text" class="cf-input" name="txtName" placeholder="Họ tên" required="">

                            <input type="email" class="cf-input" name="txtEmail" placeholder="Email" required="required">

                            <input type="text" class="cf-input" name="txtPhone" placeholder="Số điện thoại" required="required">
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 register-pdr">
                        <textarea name="txtContent" id="" cols="30" rows="7" class="cf-input" placeholder="Nội dung" required=""></textarea>
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
