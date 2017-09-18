@extends('index')
@section('content')
<main class="main-section">
    <div class="clearfix"></div>
    <section class="recruitment">
        <div class="container">
            
            <div class="row">
                <p>
                    <div class="mess col-sm-12 col-md-12">
                        @if(session('mess'))
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    <h5>{{session('mess')}}</h5>
                                </div>
                            </div>
                            
                        @endif
                    </div>
                </p>
                <div class="col-xs-12 col-md-6 col-left">
                    <h4 class="title-recruitment">Thông tin cá nhân</h4>
                    <form method="post" action="{{ route('postTuyenDung') }}">
                        <div class="bg-y">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group row">
                                <label for="name-input" class="col-sm-4 col-form-label ">Họ và tên</label>
                                <div class="col-sm-8">
                                    <input type="text" class="cf-input" name="txtName" id="name-input" placeholder="" required="required">
                                </div>
                            </div>
                            <div class="form-group row">

                                <label for="address-textarea" class="col-sm-4 col-form-label">Địa chỉ</label>

                                <div class="col-sm-8">

                                    <textarea class="cf-input" name="txtAddress" id="address-textarea" rows="5"></textarea>

                                </div>
                            </div>
                            <div class="form-group row">

                                <label for="phone-input" class="col-sm-4 col-form-label ">Điện thoại</label>

                                <div class="col-sm-8">

                                    <input type="text" name="txtPhone" class="cf-input" id="phone-input" placeholder="" required="required">

                                </div>
                            </div>
                            <div class="form-group row">

                                <label for="email-input" class="col-sm-4 col-form-label ">Email</label>

                                <div class="col-sm-8">

                                    <input type="email" name="txtEmail" class="cf-input" id="email-input" placeholder="" required="required">

                                </div>
                            </div>
                        </div>
                         <div class="form-group row">
                            <button class="cf-sub cf-sb" type="submit">Gửi</button>
                        </div>

                    </form>

                </div>

                <div class="col-xs-12 col-md-6 right-left">

                    <h4 class="title-recruitment">Địa chỉ</h4>

                   <div class="google-maps">
                   		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615944!2d105.82071311438621!3d21.002191086012704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1505291154733" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                   </div>

                </div>

               

            </div>

        </div>

    </section>

    <section class="banner-ads">

        <a href="" title="">

            <img src="{{asset('public/images/thumb.png')}}" title="" alt="">

        </a>

    </section>

</main>

<div class="clearfix"></div>
@endsection