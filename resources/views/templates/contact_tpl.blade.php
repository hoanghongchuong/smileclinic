@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<div class="clearfix"></div>
<div class="main-section">
<section class="contact">
    <div class="container">
        <h2 class="title-tt">Liên hệ</h2>
        <div class="row">
            <div class="col-xs-12 col-md-6 col-left">
                <h4>Liên hệ với chúng tôi</h4>
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2489414140177!2d105.80718531497325!3d21.02272298600164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab662650a811%3A0x290d35faf7d4d792!2zMyBDaMO5YSBMw6FuZywgTMOhbmcgVGjGsOG7o25nLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1491615129746" width="100%" height="320" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <h5>Cty CP Công Nghệ và Truyền Thông GCO</h5>
                <p class="">Phòng 109 Nhà B, Số 3 Chùa Láng, phường Láng Thượng, quận Đống Đa, TP Hà Nội</p>
                <p class="">Tel: (04)-3999.4882 | Fax: (04)-3999.4882</p>
                <p class="">Email: yduockhanhlinh@gmail.com</p>
            </div>
            <div class="col-xs-12 col-md-6 right-left">
                <h4>Gửi phản hồi cho chúng tôi</h4>
                <div class="form-contact">
                    <form method="post" action="{{route('postContact')}}">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="text" class="cf-input" name="txtName" placeholder="Họ tên" required="">
                        <input type="email" class="cf-input" name="txtEmail" placeholder="Email" required="">
                        <input type="text" class="cf-input" name="txtPhone" placeholder="Số điện thoại" required="">
                        <textarea name="txtContent" id="" cols="30" rows="7" class="cf-input" placeholder="Nội dung" required=""></textarea>
                        <button class="cf-sub" type="submit">Gửi</button>
                    </form>
                </div>
               <!--  <div class="mess">
                    @if(session('mess'))
                        <div class="alert alert-success">
                            {{session('mess')}}
                        </div>
                    @endif
                </div> -->
            </div>
        </div>
    </div>
</section>
</div>
@endsection
