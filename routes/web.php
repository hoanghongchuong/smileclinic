<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', ['as'=>'index', 'uses'=>'IndexController@index']);
Route::get('gioi-thieu',['as'=>'getAbout', 'uses'=>'IndexController@getAbout']);

Route::get('lien-he',['as'=>'getContact', 'uses'=>'ContactController@getContact']);
Route::post('lien-he',['as'=>'postContact', 'uses'=>'ContactController@postContact']);

Route::get('tin-tuc',['as'=>'getNews', 'uses'=>'IndexController@getNews']);
Route::get('tim-kiem',['as'=>'search', 'uses'=>'IndexController@search']);
Route::post('newsletter',['as'=>'postNewsletter', 'uses'=>'IndexController@postNewsletter']);
Route::get('tin-tuc/{id}.html',['as'=>'getNewsDetail', 'uses'=>'IndexController@getNewsDetail']);
Route::get('san-pham',['as'=>'getProduct', 'uses'=>'IndexController@getProduct']);
Route::get('san-pham/{id}',['as'=>'getProductList', 'uses'=>'IndexController@getProductList']);


Route::get('dich-vu',['as'=>'getDichvu', 'uses'=>'IndexController@getDichvu']);
Route::get('dich-vu/{id}',['as'=>'getDichVuList', 'uses'=>'IndexController@getDichVuList']);
Route::get('chi-tiet-dich-vu/{id}.html',['as'=>'getDichVuDetail', 'uses'=>'IndexController@getDichVuDetail']);

Route::get('tuyen-dung','IndexController@getTuyenDung')->name('getTuyenDung');
Route::post('tuyen-dung',['as'=>'postTuyenDung', 'uses'=>'IndexController@postTuyenDung']);
Route::get('thu-vien-anh',['as'=>'getThuvienanh', 'uses'=>'IndexController@getThuvienanh']);

Route::get('hoi-vien',['as'=>'getHoivien', 'uses'=>'IndexController@getHoivien']);

Route::post('gui-don-hang',['as'=>'postGuidonhang', 'uses'=>'GuiDonHangController@postGuidonhang']);
Route::get('{id}.html',['as'=>'getProductDetail', 'uses'=>'IndexController@getProductDetail']);
Route::get('bai-viet/{id}.html',['as'=>'getBaiVietDetail', 'uses'=>'IndexController@getBaiVietDetail']);
Route::get('error/404.html',['as'=>'getErrorNotFount', 'uses'=>'IndexController@getErrorNotFount']);
// Route::controllers([
// 	'auth' => 'Auth\AuthController',
// 	'password' => 'Auth\PasswordController',
// ]);

Route::get('admin/login',['as'=>'admin.auth.getLogin', 'uses'=>'AdminAuth\AuthController@getLogin']);
Route::post('admin/postlogin',['as'=>'admin.auth.postLogin', 'uses'=>'AdminAuth\AuthController@postLogin']);


Route::group(['middleware' =>'authen', 'prefix' => 'admin'], function(){
	Route::get('/',['as'=>'admin.index', 'uses'=>'Admin\IndexController@getIndex']);
	Route::get('register',['as'=>'getRegister', 'uses'=>'AdminAuth\AuthController@getRegister']);
	Route::post('postregister',['as'=>'postRegister', 'uses'=>'AdminAuth\AuthController@postRegister']);
	Route::get('logout', ['as' => 'admin.auth.logout', 'uses' => 'AdminAuth\AuthController@logout']);
	Route::get('setting',['as'=>'admin.setting.index','uses'=>'Admin\SettingController@index']);
	Route::post('setting/update',['as'=>'admin.setting.update','uses'=>'Admin\SettingController@update']);
	
	Route::post('contact/access',['as'=>'admin.contact.access','uses'=>'Admin\ContactController@xuly']);
	Route::post('recruitment/access',['as'=>'admin.recruitment.access','uses'=>'Admin\RecruitmentController@accessRe']);

	Route::group(['prefix' => 'users'], function(){
		Route::get('info',['as'=>'admin.users.getAdmin','uses'=>'Admin\UsersController@getAdmin']);
		Route::post('updateinfo',['as'=>'admin.users.updateinfo','uses'=>'Admin\UsersController@updateinfo']);
	});
	// Route::group(['prefix' => 'productcate'], function(){
	// 	Route::get('/',['as'=>'admin.productcate.index','uses'=>'Admin\ProductCateController@getDanhSach']);
	// 	Route::get('add',['as'=>'admin.productcate.getAdd','uses'=>'Admin\ProductCateController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.productcate.postAdd','uses'=>'Admin\ProductCateController@postAdd']);

	// 	Route::get('edit',['as'=>'admin.productcate.getEdit','uses'=>'Admin\ProductCateController@getEdit']);

	// 	Route::post('edit',['as'=>'admin.productcate.update','uses'=>'Admin\ProductCateController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.productcate.getDelete','uses'=>'Admin\ProductCateController@getDelete']);
	// 	Route::get('{id}/delete_list',['as'=>'admin.productcate.getDeleteList','uses'=>'Admin\ProductCateController@getDeleteList']);
	// });
	// Route::group(['prefix' => 'product'], function(){
	// 	Route::get('/',['as'=>'admin.product.index','uses'=>'Admin\ProductController@getList']);
	// 	Route::get('add',['as'=>'admin.product.getAdd','uses'=>'Admin\ProductController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.product.postAdd','uses'=>'Admin\ProductController@postAdd']);
	// 	Route::get('delimg/{id}',['as'=>'admin.product.getDelImg','uses'=>'Admin\ProductController@getDelImg']);

	// 	Route::get('edit',['as'=>'admin.product.getEdit','uses'=>'Admin\ProductController@getEdit']);
	// 	Route::post('edit',['as'=>'admin.product.update','uses'=>'Admin\ProductController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.product.getDelete','uses'=>'Admin\ProductController@getDelete']);
		
	// 	Route::get('{id}/deleteList',['as'=>'admin.product.getDeleteList','uses'=>'Admin\ProductController@getDeleteList']);
	// 	Route::get('{id}/addAlbum',['as'=>'admin.product.addAlbum','uses'=>'Admin\ProductController@addAlbum']);
	// 	Route::get('dropzoneStore',['as'=>'admin.product.dropzoneStore','uses'=>'Admin\ProductController@dropzoneStore']);
	// 	Route::get('upload',['as'=>'admin.product.upload','uses'=>'Admin\ProductController@post_upload']);
	// });
	Route::group(['prefix' => 'newscate'], function(){
		Route::get('/',['as'=>'admin.newscate.index','uses'=>'Admin\NewsCateController@getDanhSach']);
		Route::get('add',['as'=>'admin.newscate.getAdd','uses'=>'Admin\NewsCateController@getAdd']);
		Route::post('postAdd',['as'=>'admin.newscate.postAdd','uses'=>'Admin\NewsCateController@postAdd']);

		Route::get('edit',['as'=>'admin.newscate.getEdit','uses'=>'Admin\NewsCateController@getEdit']);

		Route::post('edit',['as'=>'admin.newscate.update','uses'=>'Admin\NewsCateController@update']);

		Route::get('{id}/delete',['as'=>'admin.newscate.getDelete','uses'=>'Admin\NewsCateController@getDelete']);
		Route::get('{id}/delete_list',['as'=>'admin.newscate.getDeleteList','uses'=>'Admin\NewsCateController@getDeleteList']);
	});
	// Route::group(['prefix' => 'menu'], function(){
	// 	Route::get('/',['as'=>'admin.menu.index','uses'=>'Admin\MenuController@getDanhSach']);
	// 	Route::get('add',['as'=>'admin.menu.getAdd','uses'=>'Admin\MenuController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.menu.postAdd','uses'=>'Admin\MenuController@postAdd']);

	// 	Route::get('edit',['as'=>'admin.menu.getEdit','uses'=>'Admin\MenuController@getEdit']);

	// 	Route::post('edit',['as'=>'admin.menu.update','uses'=>'Admin\MenuController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.menu.getDelete','uses'=>'Admin\MenuController@getDelete']);
	// 	Route::get('{id}/delete_list',['as'=>'admin.menu.getDeleteList','uses'=>'Admin\MenuController@getDeleteList']);
	// });


	Route::group(['prefix' => 'news'], function(){
		Route::get('/',['as'=>'admin.news.index','uses'=>'Admin\NewsController@getList']);
		Route::get('add',['as'=>'admin.news.getAdd','uses'=>'Admin\NewsController@getAdd']);
		Route::post('postAdd',['as'=>'admin.news.postAdd','uses'=>'Admin\NewsController@postAdd']);


		Route::get('edit',['as'=>'admin.news.getEdit','uses'=>'Admin\NewsController@getEdit']);
		Route::post('edit',['as'=>'admin.news.update','uses'=>'Admin\NewsController@update']);

		Route::get('{id}/delete',['as'=>'admin.news.getDelete','uses'=>'Admin\NewsController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.news.getDeleteList','uses'=>'Admin\NewsController@getDeleteList']);
	});
	Route::group(['prefix' => 'about'], function(){
		Route::get('/','Admin\AboutController@getList')->name('admin.about.getList');
		Route::get('add','Admin\AboutController@getAdd')->name('admin.about.getAdd');

		// Route::get('postAdd','Admin\AboutController@postAdd')->name('admin.about.postAdd');
		Route::post('postAdd',['as'=>'admin.about.postAdd','uses'=>'Admin\AboutController@postAdd']);

		Route::get('edit',['as'=>'admin.about.getEdit','uses'=>'Admin\AboutController@getEdit']);
		Route::post('edit',['as'=>'admin.about.update','uses'=>'Admin\AboutController@update']);

		Route::get('{id}/delete',['as'=>'admin.about.getDelete','uses'=>'Admin\AboutController@getDelete']);
	});
	// Route::group(['prefix' => 'lienket'], function(){
	// 	Route::get('/',['as'=>'admin.lienket.index','uses'=>'Admin\LienKetController@getList']);
	// 	Route::get('add',['as'=>'admin.lienket.getAdd','uses'=>'Admin\LienKetController@getAdd']);
	// 	Route::post('postAdd',['as'=>'admin.lienket.postAdd','uses'=>'Admin\LienKetController@postAdd']);


	// 	Route::get('edit',['as'=>'admin.lienket.getEdit','uses'=>'Admin\LienKetController@getEdit']);
	// 	Route::post('edit',['as'=>'admin.lienket.update','uses'=>'Admin\LienKetController@update']);

	// 	Route::get('{id}/delete',['as'=>'admin.lienket.getDelete','uses'=>'Admin\LienKetController@getDelete']);
		
	// 	Route::get('{id}/deleteList',['as'=>'admin.lienket.getDeleteList','uses'=>'Admin\LienKetController@getDeleteList']);
	// });
	Route::group(['prefix' => 'contact'], function(){
		Route::get('/','Admin\ContactController@getContact')->name('admin.contact.index');
		Route::get('delete/{id}','Admin\ContactController@deleteContact')->name('delete.contact');
	});
	Route::group(['prefix' => 'recruitment'], function(){
		Route::get('/',['as'=>'admin.recruitment.index', 'uses'=>'Admin\RecruitmentController@getRecruitment']);
		Route::get('delete/{id}',['as' => 'admin.delete.recruitment', 'uses'=>'Admin\RecruitmentController@deleteRecruitment']);

	});

	Route::group(['prefix' => 'newsletter'], function(){
		Route::get('/',['as'=>'admin.newsletter.index','uses'=>'Admin\NewsLetterController@getList']);
		Route::get('add',['as'=>'admin.newsletter.getAdd','uses'=>'Admin\NewsLetterController@getAdd']);
		Route::post('postAdd',['as'=>'admin.newsletter.postAdd','uses'=>'Admin\NewsLetterController@postAdd']);
		Route::post('sendmail',['as'=>'admin.newsletter.postNewsLetter','uses'=>'Admin\NewsLetterController@postNewsLetter']);


		Route::get('edit',['as'=>'admin.newsletter.getEdit','uses'=>'Admin\NewsLetterController@getEdit']);
		Route::post('edit',['as'=>'admin.newsletter.update','uses'=>'Admin\NewsLetterController@update']);

		Route::get('{id}/delete',['as'=>'admin.newsletter.getDelete','uses'=>'Admin\NewsLetterController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.newsletter.getDeleteList','uses'=>'Admin\NewsLetterController@getDeleteList']);
	});
	Route::group(['prefix' => 'slider'], function(){
		Route::get('/',['as'=>'admin.slider.index','uses'=>'Admin\SliderController@getList']);
		Route::get('add',['as'=>'admin.slider.getAdd','uses'=>'Admin\SliderController@getAdd']);
		Route::post('postAdd',['as'=>'admin.slider.postAdd','uses'=>'Admin\SliderController@postAdd']);


		Route::get('edit',['as'=>'admin.slider.getEdit','uses'=>'Admin\SliderController@getEdit']);
		Route::post('edit',['as'=>'admin.slider.update','uses'=>'Admin\SliderController@update']);

		Route::get('{id}/delete',['as'=>'admin.slider.getDelete','uses'=>'Admin\SliderController@getDelete']);
		
		Route::get('{id}/deleteList',['as'=>'admin.slider.getDeleteList','uses'=>'Admin\SliderController@getDeleteList']);
	});
	Route::post('uploadImg', ['as'=>'admin.uploadImg' ,'uses'=>'Admin/UploadController@uploadImg']);
	Route::post('dropzone/store', ['as'=>'dropzone.store','uses'=>'Admin/ProductController@dropzoneStore']);

});
Route::get('schema/create-product', function(){
	Schema::create('products', function($table){
		$table->increments('id');
		//$table->integer('cate_id')->unsigned();
		//$table->foreign('cate_id')->references('id')->on('product_categories')->onDelete('cascade');
		$table->integer('cate_id')->unsigned();
		$table->integer('stt')->nullable();
		$table->string('name');
		$table->string('alias');
		$table->text('photo')->nullable();
		$table->integer('price');
		$table->longText('mota')->nullable();
		$table->longText('content')->nullable();
		$table->integer('status');
		$table->longText('keyword')->nullable();
		$table->longText('description')->nullable();
		$table->timestamps();
	});
});