<?php
    $setting = Cache::get('setting');
    $chinhanh = Cache::get('chinhanh');
?>
<!-- <footer class="footer">
    <img src="img/img15.png" alt="mountain" class="footer-moun">
    <section class="foot-top">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-8 col-md-8">
                    <ul class="foot-top-list">
                        <li class="active"><a href="{!! asset('/') !!}" title="trang chủ">Trang chủ</a></li>
                        <li><a href="{!! asset('dich-vu') !!}" title="Dịch vụ">Dịch vụ</a></li>
                        <li><a href="{!! asset('hoi-vien') !!}" title="Hội viên">Hội viên</a></li>
                        <li><a href="{!! asset('thu-vien-anh') !!}" title="Thư viện ảnh">Gallery</a></li>
                        <li><a href="{!! asset('lien-he') !!}" title="liên hệ">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div class="foot-top-link">
                        <a href="{!! asset($setting->facebook) !!}" title="Facebook"><i class="fa fa-facebook"></i></a>
                        <a href="{!! asset($setting->twitter) !!}" title="Twitter"><i class="fa fa-twitter"></i></a>
                        <a href="{!! asset($setting->google) !!}" title="Google"><i class="fa fa-google"></i></a>
                        <a href="{!! asset($setting->youtube) !!}" title="Youtube"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="foot-logo"><a href="{{ asset('/') }}"><img src="{!! asset('upload/hinhanh/'.$setting->favico) !!}" alt="{!! $setting->name !!}"></a></div>
            </div>
            @foreach($chinhanh as $item)
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="foot-col">
                    <h2 class="foot-col-title">{!! $item->name !!}</h2>
                    {!! $item->content !!}
                </div>
            </div>
            @endforeach
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <h2 class="foot-col-title">Đăng ký nhận tin nhắn</h2>
                <form class="email-send" method="post" action="{!! route('postNewsletter') !!}">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                    <input type="email" name="txtEmail" required="" placeholder="Email của bạn">
                    <button class="btn-submit">
                        <i class="fa fa-envelope"></i>
                        ĐĂNG KÝ
                    </button>
                </form>
            </div>
        </div>
    </div>
    <section class="foot-bot">
        <div class="container">
            <p>{!! $setting->copyright !!}</p>
        </div>
    </section>
</footer> -->
<footer>
    <section class="footer-info">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-8">
                    <div class="info">
                        <h1>Cty CP Công Nghệ và Truyền Thông GCO</h1>
                        <div class="row">
                            <div class="col-md-6">
                                <p><i class="fa fa-map-marker" aria-hidden="true"></i> Tầng 8, TOYOTA Thanh Xuân</p>
                                <p>315 Trường Chinh, Thanh Xuân, Hà Nội</p>
                            </div>
                            <div class="col-md-3">
                                <p><i class="fa fa-phone" aria-hidden="true"></i> (04)6 290 8885</p>
                                <p><i class="fa fa-envelope" aria-hidden="true"></i> support@gco.vn</p>
                            </div>
                            <div class="col-md-3">
                                <p><i class="fa fa-print" aria-hidden="true"></i> (04)3 550 1492</p>
                                <p><i class="fa fa-globe" aria-hidden="true"></i> www.gco.vn</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="social text-right">
                        <p>Helios © 2017 All Rights Reserved | Privacy Policy</p>
                        <p><img alt="" src="{{asset('public/images/social.png')}}" title="" class="img-fluid"> </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</footer>

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>