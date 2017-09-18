<?php
    $setting = Cache::get('setting');
    $menu_top = Cache::get('menu_top');
    $dichvu = Cache::get('dichvu');
?>
 <header>
    <section class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="header-right">
                        <div class="header-nav text-right visible-desktop">
                            <ul class="list-inline nav-dropdown">
                                <li class="@if(!empty($com) && $com=='index') active @endif">
                                    <a href="{{url('')}}" title="">Trang chủ</a>
                                </li>
                                <li class="@if(!empty($com) && $com=='gioi-thieu') active @endif">
                                    <a href="{{asset('gioi-thieu')}}" title="">Giới thiệu</a>
                                </li>
                                <li class="@if(!empty($com) && $com=='tin-tuc') active @endif">
                                    <a href="{{asset('tin-tuc')}}" title="">Tin tức</a>
                                </li>
                                <li class="logo">
                                    <a href="{{url('')}}" title=""><img alt="" src="{!! asset('upload/hinhanh/'.$setting->photo) !!}" title=""> </a>
                                </li>
                                <li class="@if(!empty($com) && $com=='dich-vu') active @endif">
                                    <a href="{{asset('dich-vu')}}" title="">Dịch vụ</a>
                                </li>
                                <li class="@if(!empty($com) && $com=='tuyen-dung') active @endif">
                                    <a href="{{asset('tuyen-dung')}}" title="">Tuyển dụng</a>
                                </li>
                                <li class="@if(!empty($com) && $com=='lien-he') active @endif">
                                    <a href="{{asset('lien-he')}}" title="">Liên hệ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="logo visible-mobile">
                <a id="cd-menu-trigger" href="#0" class=""><span class="cd-menu-icon"></span></a>
                <a href="index.html" title=""><img alt="" src="{!! asset('upload/hinhanh/'.$setting->photo) !!}" title=""> </a>
            </div>
        </div>
    </section>
</header>
<div class="clearfix"></div>