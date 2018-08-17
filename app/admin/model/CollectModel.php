<?php

namespace app\admin\model;

use think\Model;

class CollectModel extends Model
{

    protected $table = "cmf_user_collect";

    protected $dateFormat = 'Y/m/d H:i';

    public function user(){
        return $this->belongsTo("UserinfoModel" , "user_id");
    }

}
