<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RecruitmentController extends Controller
{
    //
    public function getRecruitment(){
    	return view('admin.recruitment.index');
    }
}
