<?php 
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Products;
use App\NewsLetter;
use App\Recruitment;
use DB,Cache,Mail;

class IndexController extends Controller {
	protected $setting = NULL;
	/*
	|--------------------------------------------------------------------------
	| Welcome Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders the "marketing page" for the application and
	| is configured to only allow guests. Like most of the other sample
	| controllers, you are free to modify or remove it as you desire.
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		
    	$setting = DB::table('setting')->select()->where('id',1)->get()->first();
    	$menu_top = DB::table('menu')->select()->where('com','menu-top')->where('status',1)->orderBy('stt','asc')->get();
    	$dichvu = DB::table('news')->select()->where('status',1)->where('com','dich-vu')->orderBy('stt','asc')->get();
    	$chinhanh = DB::table('lienket')->select()->where('status',1)->where('com','chi-nhanh')->orderby('stt','asc')->get();
        Cache::forever('setting', $setting);
        Cache::forever('menu_top', $menu_top);
        Cache::forever('dichvu', $dichvu);
        Cache::forever('chinhanh', $chinhanh);
	}

	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		$khonggian_list = DB::table('news_categories')->select()->where('status',1)->where('com','khong-gian')->orderBy('stt','asc')->get();
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','index')->get()->first();
		$tintuc_moinhat = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderBy('created_at','desc')->take(12)->get();
		$com='index';
		$hot_news = DB::table('news')->where('status',1)->where('noibat',1)->orderBy('created_at','desc')->take(5)->get();
		$about_dichvu = DB::table('about')->select()->where('com','dich-vu')->get()->first();
		// Cấu hình SEO
		$setting = Cache::get('setting');
		
		$title = $setting->title;
		$keyword = $setting->keyword;
		$description = $setting->description;
		// End cấu hình SEO
		$img_share = asset('upload/hinhanh/'.$setting->photo);

		return view('templates.index_tpl', compact('banner_danhmuc','com','khonggian_list','about_dichvu','tintuc_moinhat','keyword','description','title','img_share','hot_news'));
	}
	public function getProduct()
	{
		$product = DB::table('products')->select()->where('status',1)->orderby('stt','asc')->paginate(12);
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','san-pham')->get()->first();
		$camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->orderby('stt','asc')->get();
		$doitac = DB::table('lienket')->select()->where('status',1)->where('com','doi-tac')->orderby('stt','asc')->get();
		$setting = Cache::get('setting');
		// Cấu hình SEO
		$title = "Sản phẩm";
		$keyword = "Sản phẩm";
		$description = "Sản phẩm";
		$img_share = asset('upload/hinhanh/'.$banner_danhmuc->photo);
		// End cấu hình SEO
		return view('templates.product_tpl', compact('product','banner_danhmuc','doitac','camnhan_khachhang','keyword','description','title','img_share'));
	}
	public function getProductList($id)
	{
		//Tìm article thông qua mã id tương ứng
		$product_cate = DB::table('product_categories')->select()->where('status',1)->where('alias',$id)->get()->first();
		if(!empty($product_cate)){
			$product = DB::table('products')->select()->where('status',1)->where('cate_id',$product_cate->id)->orderBy('stt','asc')->paginate(12);
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','san-pham')->get()->first();
			$doitac = DB::table('lienket')->select()->where('status',1)->where('com','doi-tac')->orderby('stt','asc')->get();
			$setting = Cache::get('setting');

			if(!empty($product_cate->title)){
				$title = $product_cate->title;
			}else{
				$title = $product_cate->name;
			}
			
			$keyword = $product_cate->keyword;
			$description = $product_cate->description;
			$img_share = asset('upload/product/'.$product_cate->photo);

			// End cấu hình SEO
			return view('templates.productlist_tpl', compact('product','product_cate','banner_danhmuc','doitac','keyword','description','title','img_share'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}
	public function getProductDetail($id)
	{
        //Tìm article thông qua mã id tương ứng
		$product_detail = DB::table('products')->select()->where('status',1)->where('alias',$id)->get()->first();
		

		if(!empty($product_detail)){
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','san-pham')->get()->first();

			$product_khac = DB::table('products')->select()->where('status',1)->where('alias','<>',$id)->orderby('stt','asc')->take(3)->get();
			$album_hinh = DB::table('images')->select()->where('product_id',$product_detail->id)->orderby('id','asc')->get();
			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($product_detail->title)){
				$title = $product_detail->title;
			}else{
				$title = $product_detail->name;
			}
			$keyword = $product_detail->keyword;
			$description = $product_detail->description;
			$img_share = asset('upload/product/'.$product_detail->photo);

			// End cấu hình SEO
			return view('templates.product_detail_tpl', compact('product_detail','banner_danhmuc','keyword','description','title','img_share','product_khac','album_hinh'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}
	public function getAbout()
	{
		$about = DB::table('about')->select()->get()->first();
		// $slider_about = DB::table('lienket')->select()->where('status',1)->where('com','gioi-thieu')->orderby('stt','asc')->get();
		// $banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','gioi-thieu')->get()->first();
		// $setting = Cache::get('setting');
		// // Cấu hình SEO
		// if(!empty($about->title)){
		// 	$title = $about->title;
		// }else{
		// 	$title = $about->name;
		// }
		// $keyword = $about->keyword;
		// $description = $about->description;
		// $img_share = asset('upload/hinhanh/'.$about->photo);

		// End cấu hình SEO

		return view('templates.about_tpl', compact('about','slider_about','banner_danhmuc','keyword','description','title','img_share'));
	}
	public function search(Request $request)
	{
		$search = $request->keyword;
		// Cấu hình SEO
		$title = "Tìm kiếm: ".$search;
		$keyword = "Tìm kiếm: ".$search;
		$description = "Tìm kiếm: ".$search;
		$img_share = '';

		// End cấu hình SEO
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','tim-kiem')->get()->first();
		
		$product = DB::table('news')->select()->where('com','tin-tuc')->where('name', 'LIKE', '%' . $search . '%')->orderBy('id','DESC')->paginate(12);

		return view('templates.search_tpl', compact('product','banner_danhmuc','keyword','description','title','img_share'));
	}
	public function getNews()
	{
		$tintuc = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('created_at','desc')->limit(6)->get();

		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','tin-tuc')->get()->first();
		$tintuc_noibat = DB::table('news')->select()->where('status',1)->where('noibat','>',0)->where('com','tin-tuc')->take(12)->get();
		// $camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->orderby('stt','asc')->get();

		// Cấu hình SEO
		$title = "Tin tức";
		$keyword = "Tin tức";
		$description = "Tin tức";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.news_tpl', compact('tintuc','banner_danhmuc','tintuc_noibat','camnhan_khachhang','keyword','description','title','img_share'));
	}
	public function getDichvu()
	{
		$tintuc = DB::table('news')->select()->where('status',1)->where('com','dich-vu')->orderby('stt','asc')->get();
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','dich-vu')->get()->first();
		$tintuc_noibat = DB::table('news')->select()->where('status',1)->where('noibat','>',0)->where('com','dich-vu')->take(12)->get();
		$camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->orderby('stt','asc')->get();
		$com='dich-vu';
		// Cấu hình SEO
		$title = "Dịch vụ";
		$keyword = "Dịch vụ";
		$description = "Dịch vụ";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.dichvu_tpl', compact('tintuc','com','banner_danhmuc','tintuc_noibat','camnhan_khachhang','keyword','description','title','img_share'));
	}
	public function getHoivien()
	{
		$about_hoivien = DB::table('about')->select()->where('com','hoi-vien')->get()->first();
		$about_chiase = DB::table('about')->select()->where('com','chia-se')->get()->first();
		$camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->orderby('stt','asc')->get();
		$tieuchi_hoivien = DB::table('lienket')->select()->where('status',1)->where('com','tieu-chi')->orderby('stt','asc')->get();
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','hoi-vien')->get()->first();
		$com='hoi-vien';
		// Cấu hình SEO
		$title = "Hội viên";
		$keyword = "Hội viên";
		$description = "Hội viên";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.hoivien_tpl', compact('about_hoivien','com','about_chiase','banner_danhmuc','tieuchi_hoivien','camnhan_khachhang','keyword','description','title','img_share'));
	}
	public function getThuvienanh()
	{
		$thuvienanh = DB::table('slider')->select()->where('com','thu-vien-anh')->orderBy('stt','asc')->paginate(6);
		$camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->orderby('stt','asc')->get();
		$com='thu-vien-anh';
		// Cấu hình SEO
		$title = "Thư viện ảnh";
		$keyword = "Thư viện ảnh";
		$description = "Thư viện ảnh";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.thuvienanh_tpl', compact('thuvienanh','com','camnhan_khachhang','keyword','description','title','img_share'));
	}
	public function getDichVuList($id)
	{
		//Tìm article thông qua mã id tương ứng
		$tintuc_cate = DB::table('news_categories')->select()->where('status',1)->where('com','dich-vu')->where('alias',$id)->get()->first();
		if(!empty($tintuc_cate)){
			$tintuc = DB::table('news')->select()->where('status',1)->where('cate_id',$tintuc_cate->id)->orderBy('stt','asc')->paginate(12);
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','dich-vu')->get()->first();
			$setting = Cache::get('setting');

			if(!empty($tintuc_cate->title)){
				$title = $tintuc_cate->title;
			}else{
				$title = $tintuc_cate->name;
			}
			
			$keyword = $tintuc_cate->keyword;
			$description = $tintuc_cate->description;
			$img_share = asset('upload/product/'.$tintuc_cate->photo);

			// End cấu hình SEO
			return view('templates.dichvulist_tpl', compact('tintuc','tintuc_cate','banner_danhmuc','keyword','description','title','img_share'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}
	public function getDichVuDetail($id)
	{
		$news_detail = DB::table('news')->select()->where('status',1)->where('alias',$id)->where('com','dich-vu')->get()->first();

		if(!empty($news_detail)){

			//$cate_baiviet = DB::table('news_categories')->select()->where('status',1)->where('com','bai-viet')->where('id',$news_detail->cate_id)->get()->first();
			$baiviet_khac = DB::table('news')->select()->where('status',1)->where('alias','<>',$id)->where('com','dich-vu')->orderby('created_at','desc')->take(2)->get();
			$tintuc_moinhat_detail = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('created_at','desc')->take(3)->get();
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','dich-vu')->get()->first();
			$quangcao = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','quang-cao')->get();
			$com='dich-vu';
			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($news_detail->title)){
				$title = $news_detail->title;
			}else{
				$title = $news_detail->name;
			}
			$keyword = $news_detail->keyword;
			$description = $news_detail->description;
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.dichvu_detail_tpl', compact('news_detail','com','quangcao','tintuc_moinhat_detail','camnhan_khachhang','banner_danhmuc','baiviet_khac','keyword','description','title','img_share'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
		
	}
	public function getBaiVietDetail($id)
	{
		$news_detail = DB::table('news')->select()->where('status',1)->where('alias',$id)->where('com','bai-viet')->get()->first();

		if(!empty($news_detail)){
			$tintuc_noibat = DB::table('news')->select()->where('status',1)->where('noibat','>',0)->where('com','tin-tuc')->take(5)->get();
			$cate_baiviet = DB::table('news_categories')->select()->where('status',1)->where('com','bai-viet')->where('id',$news_detail->cate_id)->get()->first();
			$baiviet_khac = DB::table('news')->select()->where('status',1)->where('alias','<>',$id)->where('com','bai-viet')->orderby('created_at','desc')->take(4)->get();
			$camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->get();
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','bai-viet')->get()->first();

			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($news_detail->title)){
				$title = $news_detail->title;
			}else{
				$title = $news_detail->name;
			}
			$keyword = $news_detail->keyword;
			$description = $news_detail->description;
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.baiviet_detail_tpl', compact('news_detail','camnhan_khachhang','banner_danhmuc','cate_baiviet','tintuc_noibat','baiviet_khac','keyword','description','title','img_share'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
		
	}
	public function getNewsDetail($id)
	{
		$news_detail = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->where('alias',$id)->get()->first();
		if(!empty($news_detail)){
			$camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->get();
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','bai-viet')->get()->first();
			$quangcao_tintuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','quang-cao')->get();
			$tintuc_moinhat_detail = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('created_at','desc')->take(6)->get();
			$baiviet_khac = DB::table('news')->select()->where('status',1)->where('alias','<>',$id)->where('com','tin-tuc')->orderby('created_at','desc')->take(2)->get();
			$com='tin-tuc';
			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($news_detail->title)){
				$title = $news_detail->title;
			}else{
				$title = $news_detail->name;
			}
			$keyword = $news_detail->keyword;
			$description = $news_detail->description;
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.news_detail_tpl', compact('news_detail','com','tintuc_moinhat_detail','camnhan_khachhang','banner_danhmuc','baiviet_khac','quangcao_tintuc','keyword','description','title','img_share'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
		
	}
	public function getMauThietKeDetail($id)
	{
		$news_detail = DB::table('news')->select()->where('status',1)->where('com','mau-thiet-ke')->where('alias',$id)->get()->first();
		if(!empty($news_detail)){
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','bai-viet')->get()->first();
			$baiviet_khac = DB::table('news')->select()->where('status',1)->where('alias','<>',$id)->where('com','mau-thiet-ke')->orderby('created_at','desc')->take(4)->get();
			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($news_detail->title)){
				$title = $news_detail->title;
			}else{
				$title = $news_detail->name;
			}
			$keyword = $news_detail->keyword;
			$description = $news_detail->description;
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.mauthietke_detail_tpl', compact('news_detail','tintuc_noibat','banner_danhmuc','baiviet_khac','keyword','description','title','img_share'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
		
	}

	public function postGuidonhang(Request $request)
	{
		$setting = Cache::get('setting');
		$data = [
			'hoten' 		=> $request->get('hoten'), 
			'diachi' 	=> $request->get('diachi'),
			'dienthoai' 	=> $request->get('dienthoai'),
			'email' 	=> $request->get('email'),
			'noidung' 	=> $request->get('noidung')
		];
		Mail::send('templates.guidonhang_tpl', $data, function($msg){
			$msg->from($request->get('email'), $request->get('hoten'));
			$msg->to('emailserver.send@gmail.com', 'Author sendmail')->subject('Liên hệ từ website');
		});

		echo "<script type='text/javascript'>
			alert('Thanks for contacting us !');
			window.location = '".url('/')."' </script>";
	}
	public function postNewsLetter(Request $request)
	{
		$this->validate($request,
            ["txtEmail" => "required"],
            ["txtEmail.required" => "Bạn chưa nhập email"]
        );
        $kiemtra_mail = DB::table('newsletter')->select()->where('status',1)->where('com','newsletter')->where('email',$request->txtEmail)->get()->first();
        if(empty($kiemtra_mail)){
			$data 				= new NewsLetter();
			$data->email    	= $request->txtEmail;
			$data->status    	= 1;
			$data->com    	= 'newsletter';
			$data->save();

			echo "<script type='text/javascript'>
				alert('Bạn đã đăng kí nhận tin tức thành công !');
				window.location = '".url('/')."' </script>";
		}else{
			echo "<script type='text/javascript'>
				alert('Email này đã đăng ký !');
				window.location = '".url('/')."' </script>";
		}
	}
	public function getErrorNotFount(){
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','san-pham')->get()->first();
		return view('templates.404_tpl',compact('banner_danhmuc'));
	}

	public function getTuyenDung(){
		return view('templates.tuyendung_tpl');
	}
	public function postTuyenDung(Request $request){
		$data = new Recruitment;
		$data->name = $request->txtName;
		$data->phone = $request->txtPhone;
		$data->email = $request->txtEmail;
		$data->address = $request->txtAddress;
		$data->save();
		return redirect()->back()->with('mess','Cảm ơn bạn đã gửi yêu cầu. Chúng tôi sẽ liên hệ lại với bạn sớm nhất !');
	}


}
