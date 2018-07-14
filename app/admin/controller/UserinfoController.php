<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 小夏 < 449134904@qq.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;

use think\Db;
use cmf\controller\AdminBaseController;
use app\admin\model\UserinfoModel ;
use app\admin\validate\UserinfoValidate as userinfo;

class UserinfoController extends AdminBaseController
{

    /**
     * 用户注册列表
     * @author  yy
     * @date 2018/07/09
     *
     * @return mixed
     */
    public function index()
    {
        $nickname = $this->request->param("nickname");
        $phone = $this->request->param("phone");

        if ($nickname) {
            $where['nickname'] = ['like', "%$nickname%"];
        }

        if ($phone) {
            $where['phone'] = $phone;
        }

        $where["isdelete"] = 0;
        $users = UserinfoModel::where($where)->order("id DESC")->paginate(10);
        // 获取分页显示
        $page = $users->render();
        foreach($users as $v){
            $v["newStatus"] = ($v->getData("status"));
        }

        $this->assign("page", $page);
        $this->assign("users", $users);

        return $this->fetch();
    }


    /**
     * 添加用户
     * @author  yy
     * @date 2018/07/09
     * @return mixed
     */
    public function add()
    {
        if($this->request->isGet()){
            //数据渲染
            $id = $this->request->param("id");

            $info = Db::name('userinfos')->find($id);
            $provinces = Db::name('provinces')->select();

            $this->assign("provinces" , $provinces);
            $this->assign("data", $info);
            return $this->fetch();
        }else{
            //数据保存
            $data = $this->request->param();

            $result = $this->validate($data , "userinfo");
            if($result !== true){
                return json(["code"=>-1 , "msg"=>$result]);
            }

            if($data["id"]){
                $user = UserinfoModel::get($data["id"]);
            }else{
                $user = new UserinfoModel;
            }
            $res = $user->save($data);

            $res = $res >0 ? 1 : 0;
            return $res;
        }

    }

    /**
     * 根据省份获取对应下面的城市
     * @author  yy
     * @date 2018/07/09
     *
     */
    public function city(){
        $provinceid = $this->request->param("provinceid");
        $cityid = $this->request->param("cityid");
        $city = Db::name("city")->where(["provinceid"=>$provinceid])->select();
        $option='';
        if($city){
            foreach ($city as $k=>$v){
                if($cityid == $v['cityid']){
                    $selected = "selected='selected'";
                }else{
                    $selected='';
                }
                $option .="<option $selected value='". $v['cityid'] ."'>" . $v['city']. "</option>";
            }
        }
        echo $option;
    }


    /**
     * 禁用/删除
     * @author  yy
     * @date 2018/07/11
     *
     */
    public function delete()
    {
        $id = $this->request->param('id', 0, 'intval');
        $user = new UserinfoModel();

        $type = $this->request->param("type");
        if($type == "delete"){
            $res = $user->save(["isdelete"=>1] , ["id"=>$id]);
        }else{
            $status = $this->request->param("status");
            $res = $user->save(["status"=>$status] , ["id"=>$id]);
        }

        if ($res) {
            $this->success("操作成功！");
        } else {
            $this->error("操作失败！");
        }
    }




}
