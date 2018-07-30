<?php

namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Request;
use app\admin\model\CommentModel as Comment;
use app\admin\model\LikeModel as Like;
class LikeController extends AdminBaseController
{

    /**
     * 点赞列表
     * @author  yy
     * @date 2018/7/30
     *
     */
    public function index($id)
    {
        $comment = Comment::find($id);

        $where['islike'] = 1;
        $where["comment_id"] = $id;
        $likeData = Like::where($where)->select();

        $cancelWhere['islike'] = -1;
        $cancelWhere["comment_id"] = $id;
        $cancelLikeData = Like::where($cancelWhere)->select();

        return view("like/index" , compact('comment' , 'likeData' , 'cancelLikeData'));

    }


}
