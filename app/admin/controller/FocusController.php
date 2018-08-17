<?php

namespace app\admin\controller;

use think\Request;
use cmf\controller\AdminBaseController;
use app\admin\model\UserinfoModel as userinfo;
use Think\Db;

class FocusController extends AdminBaseController
{

    /**
     * 显示资源列表
     * @author  yy
     * @date 2018/8/17
     *
     */
    public function index(Request $request)
    {
        $data = $request->param();
        if(isset($data["id"]) && !empty($data["id"])){
            $where["u.id"] = $data["id"];
        }

        $where["u.isdelete"] = 0;


        $list = userinfo::alias("u")->field('u.id, nickname, headimage, flag, count(f.sourceid) as focuscount')
                ->join("cmf_user_focus f" , "u.id = f.sourceid and f.isfocus=1" , "left")
                ->group("u.id")
                ->order(["u.id"=>"desc"])
                ->where($where)
                ->paginate(10);

        $this->assign("start" , ($list->currentPage()-1)*$list->listRows()); //每页开的位置
        return view("focus/index" , compact("list" , "data"));
    }

    /**
     * 查看关注列表
     * @author  yy
     * @date 2018/8/17
     *
     */
    public function focuslist(Request $request){
        $sourceid = $this->request->param("sourceid");


        $title = userinfo::where(["id"=>$sourceid])->value('nickname');
        $list = Db::name("user_focus")->alias("f")
                        ->where(['sourceid'=>$sourceid , 'isfocus'=>1])
                        ->join("cmf_userinfos u" ,"u.id = f.user_id" , "left")
                        ->field("u.nickname,u.headimage,u.flag,f.update_time")
                        ->select();

        return view("focus/focuslist" , compact('list' , 'title'));
    }




}
