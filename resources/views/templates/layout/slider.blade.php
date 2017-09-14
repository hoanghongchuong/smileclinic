<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
@if(isset($slider))
<!-- <section class="slide">
    <div id="owl-demo" class="owl-carousel">
      @foreach($slider as $item)
        <div class="item"><a href="{{ $item->link }}" title="{{ $item->name }}"><img src="{{ asset('upload/hinhanh/'.$item->photo) }}" alt=""></a></div>
      @endforeach
    </div>
</section> -->
	<section class="banner homepage-banner">
	    <div class="owl-carousel owl-theme banner-slider">
	       <!--  <a href="" title=""><img alt="" src="images/banner.jpg" title=""> </a> -->
	        @foreach($slider as $item)
		        <a href="{{ $item->link }}" title="{{ $item->name }}"><img src="{{ asset('upload/hinhanh/'.$item->photo) }}" alt=""></a>
		    @endforeach
	        
	    </div>
	</section>
@endif