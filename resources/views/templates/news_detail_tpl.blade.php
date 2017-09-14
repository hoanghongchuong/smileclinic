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
                            <li><a href="{!! asset('tin-tuc/'.$news_detail->alias.'.html') !!}" title="{{ $item->name }}">{{ $item->name }}</a> </li>
                            @endforeach
                        </ul>

                        {!! $news_detail->content !!}

                    </div>

                    <div class="col-xs-12 col-md-4 right-left">

                        <section class="news-plus">

                            <h4 class="title-plus">Tin mới cập nhật</h4>
                          
                            <ul>

                                <li class="li-main">

                                    <div class="cover"><img src="{{asset('public/images/kim.jpg')}}" alt="" title=""> </div>

                                    <p class="title-cover"><a href="chitiet-tintuc.html" title="">{{$tintuc_moinhat_detail[0]->name}}</a> </p>

                                    <p>{{$tintuc_moinhat_detail[0]->mota}}</p>

                                </li>
                                @foreach($tintuc_moinhat_detail as $key=>$val)
                                <li><a href="chitiet-tintuc.html" title="">
                                    {{ $val->name }}</a> 
                                </li>
                                @endforeach
                            </ul>

                        </section>

                        <section class="news-plus">

                            <h4 class="title-plus">Tin nhanh</h4>

                            <ul>

                                <li class="li-main">

                                    <div class="cover"><img src="{{asset('public/images/kim.jpg')}}" alt="" title=""> </div>

                                    <p class="title-cover"><a href="chitiet-tintuc.html" title="">

                                        Ngoại trưởng Mỹ: Không kích Syria là lời cảnh báo Triều Tiên</a> </p>

                                    <p>Một nữ MC người Ấn Độ trải qua khoảnh khắc đau đớn</p>

                                </li>

                                <li><a href="chitiet-tintuc.html" title="">

                                    Đưa tin về tai nạn ôtô, nữ MC phát hiện chồng thiệt mạng</a> </li>

                                <li><a href="chitiet-tintuc.html" title="">

                                    Cá mập trắng mắc cạn gây náo loạn bờ biển Mỹ</a> </li>

                                <li><a href="chitiet-tintuc.html" title="">

                                    Một năm của 'Chính phủ kiến tạo, hành động'</a> </li>

                                <li><a href="chitiet-tintuc.html" title="">

                                    Cá mập trắng mắc cạn gây náo loạn bờ biển Mỹ</a> </li>

                                <li><a href="chitiet-tintuc.html" title="">

                                    Chiến tranh trong bút pháp mới mẻ của Jean Rouaud</a> </li>

                                <li><a href="chitiet-tintuc.html" title="">

                                    Cá mập trắng mắc cạn gây náo loạn bờ biển Mỹ</a> </li>

                            </ul>

                        </section>

                        <p><img src="images/qc.png" title="" alt="" class="img-fluid"> </p>

                    </div>

                </div>

            </div>

        </section>

        <section class="banner-ads">

            <a href="" title="">

                <img src="images/thumb.png" title="" alt="">

            </a>

        </section>

    </main>

    <div class="clearfix"></div>
@endsection
