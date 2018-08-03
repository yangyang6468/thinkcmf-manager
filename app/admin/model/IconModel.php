<?php

namespace app\admin\model;

use think\Model;

class IconModel extends Model
{
    protected $table = "cmf_icon";

    protected $dateFormat = 'Y/m/d';

    public function getIconAttr($value){
        return config("MANAGER").$value;
    }
}
