<?php

namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Request;
use app\admin\model\CommentModel as Comment;
use app\admin\model\LikeModel as Like;
use think\DB;

class LikeController extends AdminBaseController
{

    /**
     * 点赞列表
     * @author  yy
     * @date 2018/7/30
     *
     */
    public function index()
    {
        $id = input('id' , '');
        if($id){
            $where["c.id"] = $id;
        }
        $where["c.isdelete"] = 0;

        $list = Comment::alias("c")
                    ->join("cmf_user_like l" , "c.id = l.comment_id and l.islike=1" , "left")
                    ->field("c.content , c.id , count(l.comment_id) as likecount")
                    ->group("c.id")->order("c.id" ,"desc")->where($where)->paginate(15);

        $comment = Comment::where(["isdelete"=>0])->column("id,content");
        $start =  ($list->currentPage()-1)*$list->listRows(); //每页开的位置

        return view("like/index" , compact('list', 'comment', 'start', 'id' ));

    }


    /**
     * 点赞详情用户
     * @author  yy
     * @date 2018/8/17
     *
     */
    public function likelist(){

        $id = input("id");

        $comment = Comment::find($id)->value('content');

        $list = Like::where(["comment_id"=>$id , "islike"=>1])->select();

        return view("like/likelist" , compact('list' ,'comment'));

    }



}
