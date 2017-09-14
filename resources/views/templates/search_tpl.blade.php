@extends('index')
@section('content')
@include('templates.layout.slider')
<section class="content">
    <section class="bread">
        <div class="container">
            <h2 class="title">
                {!! $title !!}
            </h2>
        </div>
    </section>
    <section class="service-detail home6-slide">
        <div class="container">
            <div class="row">
                @foreach($product as $item)
                <div class="item col-md-3 col-xs-6">
                    <a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" title="{!! $item->name !!}"><img src="{!! asset('upload/news/'.$item->photo) !!}" alt="{!! $item->name !!}"></a>
                    <h2 class="home6-slide-title">
                        <a href="{!! asset('tin-tuc/'.$item->alias.'.html') !!}" title="{!! $item->name !!}">{!! $item->name !!}</a>
                    </h2>
                    <p class="home6-slide-cap">{!! _substr($item->mota,150) !!}</p>
                </div>
                @endforeach
            </div>
        </div>
    </section>
</section>
@endsection
