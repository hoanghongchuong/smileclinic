@extends('index')
@section('content')
@include('templates.layout.slider')
<section class="content">
    <section class="bread">
        <div class="container">
            <h2 class="title">
                Tin tức
                <span><i class="fa fa-clock-o"></i> <?=date('d/m/Y',strtotime($news_detail->created_at))?></span>
            </h2>
        </div>
    </section>
    <section class="service-detail">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-9">
                    <div class="service-left">
                        <h1>{{ $news_detail->name }}</h1>
                        <ul>
                            @foreach($baiviet_khac as $item)
                            <li><a href="{!! asset('tin-tuc/'.$news_detail->alias.'.html') !!}" title="{{ $item->name }}">{{ $item->name }}</a> </li>
                            @endforeach
                        </ul>
                        {!! $news_detail->content !!}
                        <!-- AddThis Button BEGIN -->
                        <div class="addthis_toolbox addthis_default_style" style="margin-top:10px;">
                        <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                        <a class="addthis_button_tweet"></a>
                        <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                        <a class="addthis_counter addthis_pill_style"></a>
                        </div>
                        <script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
                        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52843d4e1ff0313a"></script>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="service-right">
                        <div class="views">
                            <p>Tin tức mới nhất</p>
                            <ul>
                                @foreach($tintuc_moinhat_detail as $item)
                                <li>
                                    <a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" title="{!! $item->name !!}"><img src="{!! asset('upload/news/'.$item->photo) !!}" alt="{!! $item->name !!}" ></a>
                                    <a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" title="{!! $item->name !!}">{!! $item->name !!}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                        @foreach($quangcao_tintuc as $item)
                        <img src="{!! asset('upload/hinhanh/'.$item->photo) !!}" alt="">
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>
@endsection
