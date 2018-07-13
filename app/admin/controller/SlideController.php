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

        $result  = Db::name('slide')->where(['isdelete' => 0])->order("id desc")->select();
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
     * 幻灯片页面删除
     * @adminMenu(
     *     'name'   => '幻灯片页面删除',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '幻灯片页面删除',
     *     'param'  => ''
     * )
     */
    public function delete()
    {
        $id     = $this->request->param('id', 0, 'intval');

        $slideItem = Db::name('slideItem')->find($id);

        $result = Db::name('slideItem')->delete($id);
        if ($result) {
            //删除图片。
//            if (file_exists("./upload/".$slideItem['image'])){
//                @unlink("./upload/".$slideItem['image']);
//            }
            $this->success("删除成功！", url("SlideItem/index",["slide_id"=>$slideItem['slide_id']]));
        } else {
            $this->error('删除失败！');
        }

    }

    /**
     * 幻灯片页面隐藏
     * @adminMenu(
     *     'name'   => '幻灯片页面隐藏',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '幻灯片页面隐藏',
     *     'param'  => ''
     * )
     */
    public function ban()
    {
        $id = $this->request->param('id', 0, 'intval');
        if ($id) {
            $rst = Db::name('slideItem')->where(['id' => $id])->update(['status' => 0]);
            if ($rst) {
                $this->success("幻灯片隐藏成功！");
            } else {
                $this->error('幻灯片隐藏失败！');
            }
        } else {
            $this->error('数据传入失败！');
        }
    }




}