<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\admin\model;

use think\Model;
use think\Db;

class ArticleModel extends Model
{
    protected $table = "cmf_articles";

    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $dateFormat = "Y-m-d H:i";

    //自定义初始化
    protected function initialize()
    {
        //需要调用`Model`的`initialize`方法
        parent::initialize();
    }

    //转换标签
    public function getCategoryIdAttr($value){
        $value = Db::name("category")->where(["id"=>$value])->value("name");
        $arr = ["label-info" , "label-success" , "label-primary" , "label-danger" , "label-warning"];
        return "<span class='label ".$arr[rand(0 , count($arr)-1)]."'>$value</span>";
    }

    //获取用户
    public function getUseridAttr($value){
        return Db::name("userinfos")->where(["id"=>$value])->value("nickname");
    }

    //封面图转换
    public function getPhotoAttr($value){
        return $value ?  config('INDEX') ."/upload/" .$value : "";
    }

    //内容转换
    public function getInfoAttr($value){
        return htmlspecialchars_decode($value);
    }

    public function getStatusAttr($value){
        $arr = ["0"=>"<span class='fa fa-close'></span>" ,"1"=>"<span class='fa fa-check'></span>"];
        return $arr[$value];
    }

    public function getStickyAttr($value){
        $arr = ["0"=>"<span class='fa fa-close'></span>" ,"1"=>"<span class='fa fa-check'></span>"];
        return $arr[$value];
    }

    public function getRecommendAttr($value){
        $arr = ["0"=>"<span class='fa fa-close'></span>" ,"1"=>"<span class='fa fa-check'></span>"];
        return $arr[$value];
    }

}