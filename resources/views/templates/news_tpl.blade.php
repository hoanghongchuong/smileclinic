@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<section class="vk-content">
    <div class="vk-page news">
        <div class="container">
            <div class="vk-inner-wrapper">
                <div class="vk-inner-container">

                    <div class="vk-box-heading text-uppercase text-center mb-4">
                        <h1 class="vk-heading-page mb-3">Tin tức</h1>
                        <img src="images/icon/1.png" alt="" class="d-inline-block img-fluid">
                    </div> <!--./vk-box-heading-->


                    <div class="vk-news">

                        <div class="vk-news-list row">

                            @foreach($tintuc as $k=>$item)
                            <div class="col-md-6 col-lg-12 item">
                                <div class="vk-news-item">
                                    <div class="vk-image">
                                        <div class="vk-img-frame">
                                            <a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" class="vk-img"><img src="{!! asset('upload/news/'.$item->photo) !!}" alt=""></a>
                                        </div>
                                    </div><!-- /.vk-image -->


                                    <div class="vk-news-item-brief">
                                        <h3 class="vk-title text-uppercase"><a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" title="{!! $item->name !!}">{!! $item->name !!}</a></h3>
                                        <div class="vk-publish-date"><?=date('d/m/Y',strtotime($item->created_at))?></div>
                                        <p class="vk-text">{!! $item->mota !!}</p>
                                        <div class="vk-button">
                                            <a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" class="vk-btn vk-btn-readmore">Đọc tiếp &nbsp;<i class="vk-icon fa fa-long-arrow-right"></i></a>
                                        </div>
                                    </div> <!--./vk-news-item-brief-->
                                </div> <!--./vk-news-item-->
                            </div> <!--./item-->
                            @endforeach
                        </div>
                        {!! $tintuc->links() !!}
                        <!-- <nav class="vk-pagination">
                            <ul class="vk-list vk-list-inline vk-list-pagination">
                                <li class="active"><a href="#">1</a></li>
                                <li class=""><a href="#">2</a></li>
                                <li class=""><a href="#">3</a></li>
                            </ul>
                        </nav> -->

                    </div> <!--./vk-product-->


                </div> <!--./vk-inner-container-->
            </div> <!--./vk-inner-wrapper-->

        </div> <!--./container-->
    </div> <!--./product-->

</section>
@endsection
