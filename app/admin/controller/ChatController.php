<?php

namespace app\admin\controller;

use app\admin\model\ChatModel as Chat;
use app\admin\model\UserinfoModel as Userinfo;
use cmf\controller\AdminBaseController;
use think\Request;
use think\Db;
class ChatController extends AdminBaseController
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {

        $userinfo = Userinfo::where(["status"=>1 , "isdelete"=>0])->field('id,nickname,headimage,flag')->select()->toArray();

        //设置发送用户的信息
        $user = $userinfo[rand(0,count($userinfo)-1)];
        $user['headimage'] = showImage($user["headimage"] , $user["flag"]);

        $this->assign("user" , json_encode($user));
        $this->assign("userinfo" , $userinfo);
        return $this->fetch();
    }

    /**
     * 查看某用户的所有聊天信息
     * @author  yy
     * @date 2018/8/10
     * @return mixed
     */
    public function chatList(){
        $chatType = $this->request->param("chatType"); // 1 我的发言 2 我的消息
        $userid = $this->request->param("userid");

        if($chatType == 1){
            $chatlist = Chat::where(["from_userid" => $userid])->select();
        }elseif($chatType == 2){
            $chatlist = Chat::where(["to_userid" => $userid])->select();
        }

        $this->assign("chatType" , $chatType);  //聊天类型
        $this->assign("chatlist" , $chatlist);  //聊天列表
        return $this->fetch('chatlist');
    }

}
