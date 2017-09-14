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
                                <a href="#" title=""><img alt="" src="images/news.jpg"> </a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-7">
                            <div class="hot-news-text">
                                <h4 class="title-hot-news"><a href="chitiet-tintuc.html" title="">Quận 1 dỡ bỏ bồn cây khách sạn trăm tuổi Majestic</a> </h4>
                                <p class="date-upload">Ngày upload: 05/09/2016</p>
                                <p>Khi Jared Kushner hội kiến Thủ tướng Iraq Haider al-Abadi, con rể Trump như một mình đóng hai vai, ngoại trưởng và cố vấn an ninh quốc gia, trong chuyến công du quan trọng này.</p>
                                <p>Chuyến công tác khác thường của Kushner đến Baghdad củng cố quyền lực đặc biệt của ông trong Nhà Trắng. Trong một bộ máy ở Nhà Trắng mà các phe phái cạnh tranh lẫn nhau, dưới sự lãnh đạo của một tổng thống đòi hỏi sự trung thành tuyệt đối thì sự thăng tiến và quyền lực gần như bất khả xâm phạm của Kushner dựa trên mối quan hệ gia đình với ông Trump. </p>
                                <p class="read-more text-right">
                                    <a href="chitiet-tintuc.html" title="">Xem chi tiết</a>
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
                        @foreach($tintuc as $item)
                            <div class="news-item">
                                <p class="newsItem-image">
                                    <a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" title=""><img alt="" src="{!! asset('upload/news/'.$item->photo) !!}" title=""> </a>
                                </p>
                                <p class="newsItem-name">
                                    <a href="#" title=""> {{$item->name}}</a>
                                </p>
                                <p class="date-upload">Cập nhật: <?=date('d/m/Y',strtotime($item->created_at))?></p>
                                <p class="newsItem-desc">{{$item->mota}}</p>
                            </div>
                        @endforeach    

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
