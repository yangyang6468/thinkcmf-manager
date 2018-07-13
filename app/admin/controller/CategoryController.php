<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: yy
// +----------------------------------------------------------------------
namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Db;

class CategoryController extends AdminBaseController
{

    /**
     * 分类列表
     * @author  yy
     * @date 2018/07/02
     * @return mixed
     */
    public function index()
    {
        $categorys = Db::name("category")->order("id desc")->paginate(10);
        $this->assign("categorys" , $categorys);
        return $this->fetch();
    }

    /**
     * 添加分类
     * @author  yy
     * @date 2018/07/02
     * @return int|mixed|\think\response\Json
     */
    public function add(){
        //提交数据
        if($this->request->isPost()){
            $rule = [ "name|分类名称" => "require" ,
                      "description|描述"=>"require" ,
                      "list_order|排序" =>"require|number"
            ];
            $data = $this->request->param();

            $result = $this->validate($data , $rule);
            if($result !== true){
                return json(["code"=>"-1" , "msg"=>$result]);
            }

            $data["create_at"] = time();
            $id = Db::name("category")->insertGetId($data);
            return $id > 0 ? 1 : 0;

        }else{

            $id = $this->request->param('id');

            if($id > 0){
                $data = Db::name('category')->find($id);
            }else{
                $data = [];
            }

            $this->assign("data" , $data);
            return  $this->fetch("ajaxReturn");

        }

    }


    /**
     * 上下架/删除
     * @author  yy
     * @date 2018/07/04
     *
     */
    public function delete()
    {
        $param  = $this->request->param();
        if($param["type"] == "delete"){
            $result = Db::name("category")->where(["id"=>$param['id']])->update(["isdelete"=>1]);
        }else{
            $result = Db::name("category")->where(["id"=>$param['id']])->update(["status"=>$param['status']]);
        }

        if($result){
            $this->success("操作成功");
        }else{
            $this->success("操作失败");
        }
    }




}
