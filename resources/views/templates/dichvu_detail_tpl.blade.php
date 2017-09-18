@extends('index')
@section('content')
<main class="main-section">


        <div class="clearfix"></div>

        <section class="news-detail">

            <div class="container">

                <h2 class="title-index title-small"><span>Tin tức</span></h2>

                <div class="row">

                    <div class="col-xs-12 col-md-8 col-left">

                        <h2>{{$news_detail->name}}</h2>

                        <ul>
                            @foreach($baiviet_khac as $item)
                            <li><a href="{{url('chi-tiet-dich-vu/'.$item->alias.'.html')}}" title="">{{$item->name}}</a> </li>
                            @endforeach

                        </ul>

                        {!!$news_detail->content!!}

                        <p>
                            <div class="fb-like" data-href="{{url('$news_detail->alias'.'.html')}}" data-layout="standard" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
                         </p>

                    </div>

                    <div class="col-xs-12 col-md-4 right-left">

                        <section class="news-plus">

                            <h4 class="title-plus">Tin mới cập nhật</h4>

                            <ul>

                                <li class="li-main">

                                    <div class="cover"><img src="{{asset('upload/news/'.$tintuc_moinhat_detail[0]->photo)}}" alt="" title=""> </div>

                                    <p class="title-cover"><a href="{{url('tin-tuc/'.$tintuc_moinhat_detail[0]->alias.'.html')}}" title="">{{$tintuc_moinhat_detail[0]->name}}</a></p>

                                    <p>{{$tintuc_moinhat_detail[0]->mota}}</p>

                                </li>
                                @for($i=1; $i< count($tintuc_moinhat_detail); $i++)    
                                <li><a href="{{url('tin-tuc/'.$tintuc_moinhat_detail[$i]->alias.'.html')}}" title="">
                                    {{$tintuc_moinhat_detail[$i]->name}}</a> 
                                </li>
                                @endfor
                                

                            </ul>

                        </section>

                        <section class="news-plus">

                            <h4 class="title-plus">Tin nhanh</h4>

                            <ul>

                                <li class="li-main">

                                    <div class="cover"><img src="{{ asset('upload/news/'.$hot_news[0]->photo)}}" alt="" title=""> </div>

                                    <p class="title-cover"><a href="{!! asset('tin-tuc/'.$hot_news[0]->alias.'.html') !!}" title=""> {{ $hot_news[0]->name}}</a> 
                                    </p>

                                    <p>{{ $hot_news[0]->mota }}</p>

                                </li>
                                @for($i=1; $i< count($hot_news); $i++)
                                <li><a href="{!! asset('tin-tuc/'.$hot_news[$i]->alias.'.html') !!}" title="">
                                    {{ $hot_news[$i]->name }}</a> 
                                </li>
                                @endfor

                            </ul>

                        </section>

                        <p><img src="{{asset('public/images/qc.png')}}" title="" alt="" class="img-fluid"> </p>

                    </div>

                </div>

            </div>

        </section>

        <section class="banner-ads">

            <a href="" title="">

                <img src="{{asset('public/images/thumb.png')}}" title="" alt="">

            </a>

        </section>

    </main>

    <div class="clearfix"></div>
@endsection
