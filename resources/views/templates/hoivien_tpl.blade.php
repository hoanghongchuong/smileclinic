@extends('index')
@section('content')
<?php $dichvu = Cache::get('dichvu'); ?>
@include('templates.layout.slider')
<section class="content">
    <section class="bread">
        <div class="container">
            <h2 class="title">
                Hội viên
            </h2>
        </div>
    </section>
    <section class="benefit">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-6">
                    <div class="benefit-left">
                        <img src="{!! asset('upload/hinhanh/'.$about_hoivien->photo) !!}" alt="" title="" class="img-responsive">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="benefit-right">
                        <h4>{!! $about_hoivien->name !!}</h4>
                        @foreach($tieuchi_hoivien as $k=>$item)
                        <p class="bene">
                            <span>0{!! $k+1 !!}</span>
                            <span>{!! $item->mota !!}</span>
                        </p>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="home-4 home-4-1">
        <div class="container">
            {!! $about_hoivien->content !!}
            <div class="row rol-0">
                @foreach($dichvu as $item)
                <div class="col-xs-6 col-sm-4 col-md-4 col-pd-12 col-7">
                    <div class="home4-in wow fadeInUp" data-wow-delay="0.2s">
                        <a href="{!! asset('chi-tiet-dich-vu/'.$item->alias.'.html') !!}" title="{!! $item->name !!}"> <img src="{!! asset('upload/news/'.$item->photo) !!}" alt="{!! $item->name !!}"></a>
                        <div class="home4-in-back">
                            <a href="{!! asset('chi-tiet-dich-vu/'.$item->alias.'.html') !!}" title="{!! $item->name !!}">{!! $item->name !!}</a>
                        </div>
                    </div>
                </div>
                @endforeach
                
            </div>
        </div>
    </section>
    <section class="relationship">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h2 class="title">{!! $about_chiase->name !!}</h2>
                    <span class="cool-divider red-rectangle center">&nbsp;</span>
                    {!! $about_chiase->content !!}
                </div>
            </div>
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1">
                    <div class="row relations">
                        @foreach($camnhan_khachhang as $item)
                        <div class="col-sm-6 col-md-3"><div class="item">
                            <div class="holder-img">
                                <img src="{!! asset('upload/hinhanh/'.$item->photo) !!}" class="img-responsive">
                            </div>
                            <h4>{!! $item->name !!}</h4>
                        </div></div>
                        @endforeach
                    </div>
                </div><!--end col offset-->
            </div><!--end row-->
        </div>
    </section>
    @if(!empty(@$banner_danhmuc))
    <section class="bot-ban">
        <img src="{!! asset('upload/hinhanh/'.$banner_danhmuc->photo )!!}" alt="banner bottom">
    </section>
    @endif
</section>
@endsection
