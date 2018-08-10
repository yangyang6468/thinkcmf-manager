<?php

namespace app\admin\model;

use think\Model;

class ChatModel extends Model
{
    protected $table = "cmf_chat";

    protected $dateFormat = 'Y-m-d H:i:s';

    //模型一对一关联
    public function fromUser(){
        return $this->belongsTo("UserinfoModel" , "from_userid");
    }

    //模型一对一关联
    public function toUser(){
        return $this->belongsTo("UserinfoModel" , "to_userid");
    }

}
