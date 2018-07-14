<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
namespace app\admin\controller;

use think\Db;
use cmf\controller\AdminBaseController;
use app\admin\model\SlideModel as Slide;

class SlideController extends AdminBaseController
{

    /**
     * 幻灯片页面列表
     * @author  yy
     * @date 2018/07/13
     * @return mixed
     */
    public function index()
    {

        $result = Slide::where(['isdelete' => 0])->order("id desc")->paginate(3);
        foreach ($result as  $v){
            $v["slideStatus"] = $v->getData("status");
        }
        $this->assign('result', $result);
        return $this->fetch();
    }

    /**
     * 幻灯片页面添加
     * @author  yy
     * @date 2018/07/13
     * @return mixed|\think\response\Json
     */
    public function add()
    {
        if($this->request->isGet()){
            $id = $this->request->param('id');
            $result = Db::name("slide")->where(["id"=>$id])->find();
            $this->assign("result" , $result);
            return $this->fetch();
        }else{
            $param = $this->request->param();

            $rule = ["title|标题" => "require|length:6,16|unique:slide",
                     "url|链接" => "require|url"];

            $result = $this->validate($param , $rule);
            if($result !== true){
                return json(["code"=>-1 , "msg"=>"$result"]);
            }

            if(isset($param["id"])){
                $res = Db::name('slide')->where(["id"=>$param["id"]])->update($param);
            }else{
                $param["createtime"] = time();
                $res = Db::name('slide')->insertGetId($param);
            }

            $res = $res > 0 ? 1 :0 ;
            return json($res);

        }

    }


    /**
     *  幻灯片页面删除/隐藏
     * @author yy
     * @Date
     */
    public function delete()
    {
        $param = $this->request->param();

        if(isset($param["status"])){
            $result = Db::name('slide')->where(['id'=>$param['id']])->update(["status"=>$param['status']]);
        }else{
            $result = Db::name('slide')->where(['id'=>$param['id']])->update(["isdelete"=>1]);
        }

        if ($result) {
            $this->success("操作成功！");
        } else {
            $this->error('操作失败！');
        }

    }


}