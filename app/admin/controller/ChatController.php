<?php

namespace app\admin\controller;

use app\admin\model\UserinfoModel as Userinfo;
use cmf\controller\AdminBaseController;
use think\Request;

class ChatController extends AdminBaseController
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {

        $userinfo = Userinfo::where(["status"=>1 , "isdelete"=>0])->select();

        $this->assign("userinfo" , $userinfo);
        return $this->fetch();
    }

}
