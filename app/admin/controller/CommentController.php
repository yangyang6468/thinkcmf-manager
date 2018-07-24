<?php

namespace app\admin\controller;


use think\Request;
use cmf\controller\AdminBaseController;
use app\admin\model\CommentModel as Comment;
use think\DB;

class CommentController extends AdminBaseController
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {

        $comments = Comment::order("id" , "desc")->paginate(10);

        return view('index' , compact('comments'));
    }


    /**
     * 添加评论
     * @author  yy
     * @date 2018/7/24
     *
     */
    public function add(Request $request){

        if($request->isPost()){
            $data = $request->param();
            $rule = ["article_id|文章" => "require",
                     "content|评论内容" => "require|min:5",
                     "user_id|用户" => 'require'
            ];

            $result = $this->validate($data , $rule);
            if($result !== true){
                return json(["code"=>-1 , "msg"=>$result]);
            }

            $comment = new Comment();
            $res = $comment->insertGetId($data);
            if($res > 0){
                DB::name("articles")->where(["id"=>$data['article_id']])->setInc("comment_count");
            }

            $res = $res > 0 ? 1 : 0;
            return json($res);
        }

        
        $article  = DB::name("articles")->where(["isdelete"=>0])->order(["id"=>"desc"])->column('id,title');
        $userinfo = DB::name("userinfos")->where(["isdelete"=>0])->order(["id"=>"desc"])->column("id,nickname");

        return view("add" , compact("article" , "userinfo"));
    }

    public function create()
    {
        //
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }
}
