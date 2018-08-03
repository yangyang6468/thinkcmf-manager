<?php

namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use app\admin\model\IconModel as Icon;
use think\DB;

class IconController extends AdminBaseController
{
    /**
     * 列表
     * @author  yy
     * @date 2018/8/3
     *
     */
    public function index()
    {
        $list = Icon::order(['id'=>'desc'])->paginate(12);

        return view('icon/index' , compact('list'));
    }


    public function add(){
        $insert['icon'] = $this->request->param('img');
        $insert['create_time'] = time();
        $insert['status'] = 1;
        $insert['type'] = 1;
        $insert['flag'] = 2;

        $res = DB::name("icon")->insertGetId($insert);
        return $res;

    }


}
