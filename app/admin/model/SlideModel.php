<?php

namespace app\admin\model;

use think\Model;

class SlideModel extends Model
{
    public function getStatusAttr($value){
        $arr = ["0"=>"<span class='label label-danger'>隐藏</span>","1"=>"<span class='label label-success'>显示</span>"];
        return $arr[$value];
    }



}