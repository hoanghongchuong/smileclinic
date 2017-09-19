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
        <div class="mess col-sm-12 col-md-12">
            @if(session('mess'))
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <div class="alert alert-success">
                        <h5>{{session('mess')}}</h5>
                    </div>
                </div>
                
            @endif
        </div>
        <div class="row">
            <div class="col-xs-12 col-md-6 col-left">
                <h4>Liên hệ với chúng tôi</h4>
                <div class="map">
                    {!!$setting->iframemap!!}
                </div>
                <h5>{{$setting->company}}</h5>
                <p class="">{{$setting->address}}</p>
                <p class="">Tel: {{$setting->phone}} | Fax: {{$setting->fax}}</p>
                <p class="">Email: {{$setting->email}}</p>
            </div>
            <div class="col-xs-12 col-md-6 right-left">
                <h4>Gửi phản hồi cho chúng tôi</h4>
                <div class="form-contact">
                    <form method="post" action="{{route('postContact')}}">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="text" class="cf-input" name="txtName" placeholder="Họ tên" required="">
                        <input type="email" class="cf-input" name="txtEmail" placeholder="Email" required="">
                        <input type="text" class="cf-input" name="txtPhone" placeholder="Số điện thoại" required="">
                        <textarea name="txtContent" id="" cols="30" rows="7" class="cf-input" placeholder="Nội dung"></textarea>
                        <button class="cf-sub" type="submit">Gửi</button>
                    </form>
                </div>
                
            </div>
        </div>
    </div>
</section>
</div>
@endsection
