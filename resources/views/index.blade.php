<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' />
    
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="Đoàn Văn Duy [duydoan.nina@gmail.com]" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />

    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />

    <link rel="stylesheet" href="{{ asset('public/css/bootstrap.min.css')}}" />
    <link rel="stylesheet" href="{{ asset('public/css/font-awesome.min.css')}}" />
    <link rel="stylesheet" href="{{ asset('public/css/owl.carousel.min.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/simplte-style-navigation.css') }}">
    <link rel="stylesheet" href="{{ asset('public/css/owl.theme.default.min.css')}}" />
    
    <link href="{{ asset('public/css/responsive.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/styles.css') }}" rel="stylesheet">
    
    
    <script src="{{ asset('public/js/jquery.min.js') }}"></script><!--jQuery v1.11.3-->
    
</head>
<body>
    @include('templates.layout.header')
    @include('templates.layout.slider')
    @yield('content')
    @include('templates.layout.footer')
    <nav id="cd-lateral-nav" class="">

        <ul class="cd-navigation nav-dropdown">

            <li>

                <a href="index.html" title="">Trang chủ</a>

            </li>

            <li>

                <a href="gioi-thieu.html" title="">Giới thiệu</a>

            </li>

            <li>

                <a href="tin-tuc.html" title="">Tin tức</a>

            </li>

            <li>

                <a href="dich-vu.html" title="">Dịch vụ</a>

            </li>

            <li  class="dropdown">

                <a href="tuyen-dung.html" title="">Tuyển dụng</a>

            </li>

            <li>

                <a href="lien-he.html" title="">Liên hệ</a>

            </li>

        </ul>

    </nav>
    <script src="{{ asset('public/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('public/js/wow.min.js') }}"></script><!--WOW - v1.0.1 - 2014-08-15-->
    <script src="{{ asset('public/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('public/js/owl.carousel.thumbs.min.js') }}"></script>
    <script src="{{ asset('public/js/modernizr.js') }}"></script>
    <script src="{{ asset('public/js/menu-mobile.js') }}"></script>
    <script src="{{ asset('public/js/private.js') }}"></script>
    
    
    
    
    <script>
        new WOW().init();
    </script>

    {{ $setting->codechat }}
    {{ $setting->analytics }}
</body>
</html>