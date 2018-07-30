<?php

namespace app\admin\model;

use think\Model;

class LikeModel extends Model
{
    protected $table = "cmf_user_like";

    public function user(){
        return $this->belongsTo('UserinfoModel' , 'user_id');
    }


}
