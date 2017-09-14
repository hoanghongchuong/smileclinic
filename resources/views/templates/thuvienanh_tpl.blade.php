@extends('index')
@section('content')
<?php $dichvu = Cache::get('dichvu'); ?>
<script src="{!! asset('public/js/masonry.pkgd.min.js') !!}"></script>

<script src="{!! asset('public/js/imagesloaded.pkgd.min.js') !!}"></script>

<script type="text/javascript" src="{!! asset('public/js/private.js') !!}"></script>
@include('templates.layout.slider')
<div class="content">
    <section class="galery-block">
        <div class="container">
            <div class="row row-cutom masonry-container">
                <?php 
                    //$mangthuvien = array_chunk($thuvienanh,3);
                    $mangthuvien = $thuvienanh->chunk(3); 
                    
                ?>
                @foreach($mangthuvien as $h=>$row)
                    @foreach($row as $k=>$item)
                    <div class="<?php if($k==2 || $k==3) echo 'col-md-6'; else echo 'col-md-3';?> item">
                        <a class="fancybox-buttons" data-fancybox-group="button" href="{!! asset('upload/hinhanh/'.$item->photo) !!}" title="{!! $item->name !!}">

                            <img src="{!! asset('upload/hinhanh/'.$item->photo) !!}" alt="{!! $item->name !!}" >

                        </a>

                    </div>
                    @endforeach
                @endforeach
            </div>
        </div>
    </section>
    <section class="text-center">
    {{ $thuvienanh->links() }}
    </section>
    <!-- <section class="paginations text-center">
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
            <li class="page-item active"><a class="page-link " href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
          </ul>
        </nav>
    </section> -->

</div>

@endsection
