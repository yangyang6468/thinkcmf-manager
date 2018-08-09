<?php

namespace app\admin\model;

use think\Model;

class UserinfoModel extends Model
{
    //表名
    protected $table ="cmf_userinfos";

    //自动设置更新时间
    protected $autoWriteTimestamp = true;

    protected $createTime = 'createtime';
    protected $updateTime = 'lastlogindate';
    protected $dateFormat = "Y-m-d H:i";

    protected $auto = ["ip" , "updatetime" , 'flag'];

    //设置自动更新IP
    public function setIpAttr(){
       return $_SERVER["REMOTE_ADDR"];
    }

    //md5加密
    public  function setUserpwdAttr($v){
        return md5($v);
    }

    //时间自动更新
    public function setUpdatetimeAttr($v){
        return time();
    }

    //设置后台标志
    public function setFlagAttr(){
        return 2;
    }


    //渲染性别图标
    public function getGenderAttr($v){
        $arr = ["0"=>'<i class="fa fa-genderless"    style="color: #2d3033;font-size: 20px;">' ,
                "1"=>'<i class="fa fa-mars-stroke"   style="color: #4CA6FF;font-size: 20px;">' ,
                "2"=>'<i class="fa fa-mars-stroke-v" style="color: indianred;font-size: 20px;">'];

        return $arr[$v];
    }

    //渲染状态图标
    public function getStatusAttr($v){
        $arr = ["0"=>'<span class="label label-warning">禁用</span>' ,
                "1"=>'<span class="label label-success">启用</span>' ,];

        return $arr[$v];
    }


}