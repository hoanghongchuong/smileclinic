@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<main class="main-section">

            <div class="clearfix"></div>

            <section class="hot-news">

                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-5">
                            <div class="hot-news-image">
                                <a href="{{ asset('tin-tuc/'.$tintuc[0]->alias.'.html') }}" title=""><img alt="" src="{{ asset('upload/news/'.$tintuc[0]->photo)}}"> </a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-7">
                            <div class="hot-news-text">
                                <h4 class="title-hot-news"><a href="{{ asset('tin-tuc/'.$tintuc[0]->alias.'.html') }}" title="">{{ $tintuc[0]->name }}</a> </h4>
                                <p class="date-upload">Ngày upload: {{ date('d/m/Y', strtotime($tintuc[0]->created_at))}}</p>
                                <p> {{ $tintuc[0]->mota }}</p>
                                <p class="read-more text-right">
                                    <a href="{{ asset('tin-tuc/'.$tintuc[0]->alias.'.html') }}" title="">Xem chi tiết</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="news-plus">
                <div class="container">
                    <div class="">
                        <div class="news-group">
                      
                            @for($i=1; $i< count($tintuc); $i++)
                                <div class="news-item">
                                    <p class="newsItem-image">
                                        <a href="{!! asset('tin-tuc/'.$tintuc[$i]->alias.'.html') !!}" title=""><img alt="" src="{!! asset('upload/news/'.$tintuc[$i]->photo) !!}" title=""> </a>
                                    </p>
                                    <p class="newsItem-name">
                                        <a href="{!! asset('tin-tuc/'.$tintuc[$i]->alias.'.html') !!}" title=""> {{$tintuc[$i]->name}}</a>
                                    </p>
                                    <p class="date-upload">Cập nhật: <?=date('d/m/Y',strtotime($tintuc[$i]->created_at))?></p>
                                    <p class="newsItem-desc">{{$tintuc[$i]->mota}}</p>
                                </div>
                            @endfor
                        </div>
                    </div>

                </div>

            </section>

            <section class="banner-ads">

                <a href="" title="">

                    <img src="{{asset('public/images/thumb2.png')}}" title="" alt="">

                </a>

            </section>

        </main>

        <div class="clearfix"></div>
@endsection
