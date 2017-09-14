@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<section class="detail-info">
    <div class="container">
        <div class="row detail-row">
            @foreach($tintuc as $k=>$item)
            <div class="col-xs-12 col-sm-6 text-center news-l">
                <div class="col-xs-12 col-sm-2 title news-calen">
                    <span class="news-date"><?=date('d',strtotime($item->created_at))?></span>
                    <p class="news-my"><?=date('m-Y',strtotime($item->created_at))?></p>
                </div>
                <div class="col-xs-12 col-sm-10">
                    <a href="{!! asset('chi-tiet-khong-gian/'.$item->alias.'.html') !!}" title=""><img src="{!! asset('upload/news/'.$item->photo) !!}" alt="" title="{!! $item->name !!}" class="img-center"></a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 news-r">
                <h2 class="title mtitle"><a href="{!! asset('chi-tiet-khong-gian/'.$item->alias.'.html') !!}" title="{!! $item->name !!}">{!! $item->name !!}</a></h2>
                <p class="title news-time">Ngày tạo: <span><?=date('d/m/Y',strtotime($item->created_at))?></span></p>
                <p class="text-justify">{!! $item->mota !!}</p>
                <p class="text-uppercase title news-more"><a href="{!! asset('chi-tiet-khong-gian/'.$item->alias.'.html') !!}" title="{!! $item->name !!}">Xem tiếp</a></p>
            </div>
            <div class="clearfix"></div>
            @endforeach

        </div>
        {!! $tintuc->links() !!}
    </div>
</section>
@endsection
