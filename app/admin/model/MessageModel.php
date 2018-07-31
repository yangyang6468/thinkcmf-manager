<?php

namespace app\admin\model;

use think\Model;

class MessageModel extends Model
{
    protected $table = "cmf_message";
    // 是否自动写入时间
    protected $autoWriteTimestamp = true;
    //渲染输出的时间格式
    protected $dateFormat = "Y-m-d H:i";

    //关联查询
    public function user(){
        return $this->belongsTo("UserinfoModel" , 'user_id');
    }

}
