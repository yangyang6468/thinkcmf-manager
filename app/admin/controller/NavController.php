<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: kane <chengjin005@163.com> 小夏 < 449134904@qq.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;

use app\admin\model\NavModel;
use cmf\controller\AdminBaseController;
use tree\Tree;
use think\Db;
use think\Request;

/**
 * Class NavMenuController 前台菜单管理控制器
 * @package app\admin\controller
 */
class NavController extends AdminBaseController
{
    /**
     * 导航菜单
     * @adminMenu(
     *     'name'   => '导航菜单',
     *     'parent' => 'admin/Nav/index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '导航菜单',
     *     'param'  => ''
     * )
     */
    public function index()
    {

        $objResult = NavModel::order(["list_order" => "ASC"])->select();
        $arrResult = $objResult ? $objResult->toArray() : [];
        $tree       = new Tree();
        $tree->icon = ['&nbsp;&nbsp;&nbsp;│ ', '&nbsp;&nbsp;&nbsp;├─ ', '&nbsp;&nbsp;&nbsp;└─ '];
        $tree->nbsp = '&nbsp;&nbsp;&nbsp;';

        foreach ($arrResult as $k=> $r) {
            if($r["parent_id"] == 0){
                $r['str_manage'] = '<a href=javascript:addSaveAddOrder("' . url("edit") . '",'. $r["id"] . ')>添加子菜单</a> | 
                                    <a href=javascript:addSaveAddOrder("' . url("add") . '",'. $r["id"] . ')>编辑</a> | 
                                    <a class="js-ajax-delete" href="' . url("Nav/delete", ["id" => $r['id']]) . '">删除</a> ';
            }else{
                $r['str_manage'] = '<a href=javascript:addSaveAddOrder("' . url("add") . '",'. $r["id"] . ')>编辑</a> | 
                                    <a class="js-ajax-delete" href="' . url("Nav/delete", ["id" => $r['id']]) . '">删除</a> ';

            }
            if($r["parent_id"] == 0){
                $r["sort"] = $k+1;
            }else{
                $r["sort"] = '';
            }

            $r['status'] = $r['status'] ? "<span class='label label-info label-sm'>显示</span>" : "<span class='label label-warning label-sm'>隐藏</span>";
            $r["flag"] = $r['flag'] == 2 ? "<span class='label label-info label-sm'>友情链接</span>" : "<span class='label label-success label-sm'>首部导航</span>";
            $array[] = $r;
        }

        $tree->init($array);
        $str = "<tr>     
                    <td>\$sort</td>
                    <td>\$spacer\$name</td>
                    <td>\$create_time</td>
                    <td >\$href</td>
                    <td>\$status</td>
                    <td>\$flag</td>
                    <td>\$str_manage</td>
                </tr>";

        $categories = $tree->getTree(0, $str);

        $this->assign("categories", $categories);


        return $this->fetch();
    }


    /**
     * 添加导航菜单
     * @author  yy
     * @date 2018/7/17
     * @return mixed|\think\response\Json
     */
    public function add()
    {
        if($this->request->isGet()){

            $id = $this->request->param('id' , 0);
            $data = Db::name("nav")->where(["id"=>$id])->find();
            $nav = Db::name("nav")->where(["parent_id"=>0])->column('id,name');

            $this->assign("nav" , $nav);
            $this->assign("data" , $data);
            return $this->fetch();

        }else{
            $data =  $this->request->param();

            $data['create_time'] = time();
            $data['update_time'] = time();
            if($data["id"]){
                $res = Db::name("nav")->where(['id'=>$data['id']])->update($data);
            }else{
                $res = Db::name("nav")->insertGetId($data);
            }

            $res = $res > 0 ? 1 : 0;
            return json($res);
        }



    }

    /**
     * 添加子菜单
     * @author  yy
     * @date  2018/7/17
     * @return mixed
     */
    public function edit(Request $request)
    {

        if($request->isGet()){
            $id = $request->param("id");
            $data = Db::name("nav")->where(["id"=>$id])->field(" id as parent_id")->find();

            $nav = Db::name("nav")->where(["parent_id"=>0])->column('id,name');
            $this->assign("nav" , $nav);
            $this->assign("data" , $data);
            return $this->fetch('nav/add');
        }else{

            $data =  $this->request->param();

            $data['create_time'] = time();
            $data['update_time'] = time();
            $res = Db::name("nav")->insertGetId($data);

            $res = $res > 0 ? 1 : 0;
            return json($res);

        }

    }


    /**
     * 删除导航菜单
     * @author  yy
     * @date 2018/7/17
     *
     */
    public function delete()
    {
        $intId = $this->request->param("id", 0, "intval");
        $status = $this->request->param("status" , "delete");
        if($status == "update"){
            $res = Db::name('nav')->where(["id" => $intId])->update(["status"=>0]);
        }else{
            $count = Db::name('nav')->where(["parent_id" => $intId])->count();
            if ($count > 0) {
                $this->error("该菜单下还有子菜单，无法删除！");
            }
            $res = Db::name('nav')->where(["id" => $intId])->delete();;
        }

        if($res){
            $this->success("操作成功！！！");
        }else{
            $this->error("操作失败!!!");
        }
    }

}