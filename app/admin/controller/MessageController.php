<?php

namespace app\admin\controller;

use app\admin\model\MessageModel;
use cmf\controller\AdminBaseController;
use think\Request;
use app\admin\model\UserinfoModel as Userinfo;

class MessageController extends AdminBaseController
{
    /**
     * 留言板列表
     * @author  yy
     * @date
     *
     */
    public function index()
    {
        $user = Userinfo::where(["isdelete"=>0])->field('id,nickname')->select();

        $message = MessageModel::order(["id"=>'desc'])->limit(8)->select();
        return view("message/index" , compact('user' , 'message'));
    }


    /**
     * 添加留言
     * @author  yy
     * @date 2018/7/31
     */
    public function add(){
        $data = $this->request->param();
        $rules = [
            'message|留言信息' => 'require|min:5',
        ];

        $result = $this->validate($data , $rules );

        if($result !== true){
            return json(["code"=>-1 , 'msg'=>$result]);
        }

        $request_url = "http://api.map.baidu.com/location/ip?ak=ia6HfFL660Bvh43exmH9LrI6";
        $resource = _request($request_url);
        $address = explode("|" , $resource->address);

        if(strcasecmp($address[1], $address[2]) != 0){
            $insert["from"] = $address[1].$address[2];
        }else{
            $insert["from"] = $address[1];
        }

        $insert["user_id"] = $data["user_id"];
        $insert["message"] = $data["message"];

        $message = new MessageModel();
        $res = $message->save($insert);
        if($res){
            $data = MessageModel::order(["id"=>'desc'])->find();
            if($data->user){
                $img = '<img width="40px" height="40px" class="img-circle" src="'. showImage($data->user->headimage , $data->user->flag) .'">
                        <span class="nickname">'. $data->user-nickname .'</span> ';
            }else{
                $img = '<img width="40px" height="40px" class="img-circle" src="'. setDefaultIcon() .'">
                        <span class="nickname">来自'. $data->from .'的用户</span> ';
            }

            $str = ' <li class="showBtn(this)">' . $img .'
                        <span class="BarMes">'. $insert["message"] .'</span>
                        <span class="BarMes">'. $data->create_time .'</span>
                    </li>';

            return json(["code"=>1 , 'msg'=>$str]);
        }else{
            return json(["code"=>-2 , 'msg'=>'操作失败']);
        }
    }

    /**
     * 循环展示留言信息
     * @author  yy
     * @date 2018/7/31
     *
     */
    public function detail(){
        $num  = $this->request->param('num');
        $message = MessageModel::order(["id"=>'desc'])->limit($num,8)->select()->toArray();

        if(!$message){
            $message = MessageModel::order(["id"=>'desc'])->limit(8)->select();
        }

        return view("message/detail" , compact('message'));
    }


}
