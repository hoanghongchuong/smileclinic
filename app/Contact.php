<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    //
    protected $table="contacts";

    // cái hàm này chỉ làm màu thôi :D
    public function toggleStatus()
	{
        $this->status= !$this->status;
        return $this;
    }
}
