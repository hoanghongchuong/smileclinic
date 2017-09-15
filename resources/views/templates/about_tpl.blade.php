@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
 <main class="main-section">

        <div class="clearfix"></div>
        <section class="contact">
            <div class="container">
                <h2 class="title-tt">Giới thiệu</h2>
                <div class="row">
                    <div class="col-xs-12 col-md-12 col-left content-about">
                        <h4>Về chúng tôi</h4>
                        {!! $about->content !!}
                        <!-- <p class="p1">Công Ty Cổ Phần Y Dược Khánh Linh hoạt động lĩnh vực sản xuất và phân phối dược phẩm với các sản phẩm như Canxi Nano, Vitamin E, Nước súc miệng Asarin, dung dịch vệ sinh phụ nữ.</p>
                        <p class="p1">Sứ mệnh tạo ra sản phẩm để có sức khỏe tốt hơn cả về thể chất và tinh thần.</p>

                        <p class="p1">Hoài bão : 5 năm tới là 1 trong 300 công ty dược lớn tại Việt Nam.</p>

                        <p class="p1">Văn hóa 3Đ : Đồng Đội, Dấn Thân, Đề Xuất</p>

                        <p class="p1">- Đồng đội với tinh thần cởi mở, sẵn sàng giúp nhau, sức mạnh tập thể lớn gấp nhiều lần sức mạnh cá nhân.</p>

                        <p class="p1">- Dấn thân trong cách làm việc, không ngại khó, ngại khổ, vững tin vào giá trị công ty đem lại.</p>

                        <p class="p1">- Đề xuất thể hiện cách làm việc luôn hướng tới sự hoàn thiện.</p>
                    </div>
                    <div class="col-xs-12 col-md-12 right-left">
                        <img class="img-fluid" src="{{asset('public/images/gioithieu.jpg')}}" alt="" title="">
                    </div> -->
                </div>
            </div>
        </section>
        <section class="map">
            <div class="container ">
                {!!  $setting->iframemap !!}
            </div>
        </section>

    </main>
@endsection
