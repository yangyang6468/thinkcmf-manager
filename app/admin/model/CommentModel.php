<?php

namespace app\admin\model;

use think\Model;

class CommentModel extends Model
{

    protected $table = "cmf_comments";

    // 定义时间戳字段名
    protected $dateFormat = "Y-m-d H:i";

    protected $autoWriteTimestamp = true;

    protected $updateTime = false;

    public function getStatusAttr($v){
        $arr = [
            "0" => "<span class='label label-warning'>待审核</span>",
            "1" => "<span class='label label-success'>通过</span>",
            "2" => "<span class='label label-danger'>驳回</span>",
        ];
        return $arr[$v];
    }


    /**
     * 获取被评论用户的信息
     * @author  yy
     * @date 2018/7/24
     * @return \think\model\relation\BelongsTo
     */
    public function user(){
        return $this->belongsTo("UserinfoModel" , "user_id")->field('nickname');
    }


    public function article(){
        return $this->belongsTo("ArticleModel" , "article_id")->field('title');
    }


}
