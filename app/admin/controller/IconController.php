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
        $imgType = $this->request->param("imgType");
        if($imgType){
            $where["type"] = $imgType;
        }else{
            $where["type"] = ["in" , [1,2]];
        }
        $list = Icon::order(['id'=>'desc'])->where($where)->paginate(12);

        return view('icon/index' , compact('list'));
    }

    /**
     * 添加图片
     * @author  yy
     * @date 2018/8/6
     * @return int|string
     */
    public function add(){
        $insert['icon'] = $this->request->param('img');
        $insert["type"] = $this->request->param("type");
        $icon_id = DB::name("icon")->where(["icon"=>$insert['icon']])->value('id');
        if($icon_id){
            return -2;
        }
        $insert['create_time'] = time();
        $insert['status'] = 1;
        $insert['flag'] = 2;
        $res = DB::name("icon")->insertGetId($insert);
        return $res;

    }


    /**
     * 删除/状态修改
     * @author  yy
     * @date 2018/8/6
     *
     */
    public function delete(){
        $id = $this->request->param('id');
        $type = $this->request->param('type');
        if($type == 'delete'){
            $res = DB::name("icon")->delete($id);
        }else{
            $status = $this->request->param('status');
            $status = $status > 0 ? 0 : 1;
            $res = DB::name("icon")->where(["id"=>$id])->update(["status"=>$status]);
        }

        if($res){
            $this->success("操作成功!!!");
        }else{
            $this->error("操作失败!!!");
        }

    }

}
