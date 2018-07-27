<?php

namespace app\admin\model;

use think\Model;

class CollectModel extends Model
{

    protected $table = "cmf_user_collect";

    public function user(){
        return $this->belongsTo("UserinfoModel" , "user_id");
    }

}
