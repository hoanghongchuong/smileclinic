@extends('index')
@section('content')
<section class="detail-info">
    <div class="container">
        <div class="row detail-row">
            <div class="col-xs-12 col-sm-8 title news-detail-content ">
                <div class="news-calen news-detail-calen">
                    <span class="news-date"><?=date('d',strtotime($news_detail->created_at))?></span>
                    <p class="news-my"><?=date('m-Y',strtotime($news_detail->created_at))?></p>
                </div>
                <a href="news-detail.html" title=""><img src="{!! asset('upload/news/'.$news_detail->photo) !!}" alt="" title="" class="img-center"></a>
                <h1 class="mtitle content-tit"><a href="javascript:" title="">{!! $news_detail->name !!}</a></h1>
                <p class="news-time detail-time">Ngày tạo: <span><?=date('d/m/Y',strtotime($news_detail->created_at))?></span></p>
                {!! $news_detail->content !!}
                <p>
                    <!-- AddThis Button BEGIN -->
                    <div class="addthis_toolbox addthis_default_style" style="margin-top:10px;">
                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                    <a class="addthis_button_tweet"></a>
                    <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                    <a class="addthis_counter addthis_pill_style"></a>
                    </div>
                    <script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
                    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52843d4e1ff0313a"></script>
                </p>
                <div class="fb-comments" data-href="{!! asset('chi-tiet-khong-gian/'.$news_detail->alias.'.html') !!}" data-width="100%" data-num-posts="10"></div>
            </div>
            <div class="col-xs-12 col-sm-4 title">
                <h2 class="text-uppercase title mtitle news-detail-re"><a href="javascript:" title="">Bài viết liên quan</a></h2>
                <div class="row news-detail-re-row">
                    @foreach($baiviet_khac as $item)
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <a href="{!! asset('chi-tiet-khong-gian/'.$item->alias.'.html') !!}" title="{!! $item->name !!}"><img src="{!! asset('upload/news/'.$item->photo) !!}" alt="{!! $item->name !!}"  class="img-center"></a>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8">
                        <h3 class="news-detail-re-tit"><a href="{!! asset('chi-tiet-khong-gian/'.$item->alias.'.html') !!}" title="{!! $item->name !!}">{!! $item->name !!}</a></h3>
                        <p class="news-time news-re-time">Ngày tạo: <span><?=date('d/m/Y',strtotime($item->created_at))?></span></p>
                    </div>

                    @endforeach
                </div>
                
            </div>
        </div>
    </div>
</section>

@endsection
