<?php

namespace app\admin\controller;

use think\Request;
use cmf\controller\AdminBaseController;
use app\admin\model\CommentModel as Comment;
use think\DB;

class CommentController extends AdminBaseController
{

    /**
     * @author  yy
     * @date 评论列表
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|\think\response\View
     */
    public function index(Request $request)
    {
        $start_time = $request->param('start_time');
        $end_time = $request->param('end_time');
        $title = $request->param('title');
        $article_id = $request->param('article_id');

        // 搜索条件
        if($start_time && !$end_time){
            $where["create_time"] = [">=" , strtotime($start_time . " 00:00:00")];
        }elseif(!$start_time && $end_time){
            $where["create_time"] = [ "<=" , strtotime($end_time . " 23:59:59")];
        }elseif($start_time && $end_time){
            $where["create_time"] = ["between" , [strtotime($start_time . " 00:00:00") , strtotime($end_time . " 23:59:59")]];
        }

        if($title){
            $where["content"] = ["like" ,"%$title%"];
        }

        if($article_id){
            $where["article_id"] = $article_id;
        }

        $where["parent_id"] = 0;
        $where["isdelete"] = 0;
        $comments = Comment::order("id" , "desc")->where($where)->paginate(15);
        foreach ($comments as $k=>$v){
            $v->children = Comment::where(["parent_id"=>$v->id , "isdelete"=>0])->select();
            $v->count = Comment::where(["parent_id"=>$v->id , "isdelete"=>0])->count();
        }

        $articles = Db::name("articles")->where(["isdelete"=>0])->column("id,concat(left(title,20) , '...') as title");
        $start = ($comments->currentPage()-1)*$comments->listRows(); //每页起始位置

        return view('index' , compact('comments' , 'articles' , "article_id" ,"start"));
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
            //数据验证
            $result = $this->validate($data , $rule);
            if($result !== true){
                return json(["code"=>-1 , "msg"=>$result]);
            }

            $comment = new Comment();
            $comment->startTrans(); //开启事务
            $res = $comment->save($data);
            $incNum = DB::name("articles")->where(["id"=>$data['article_id']])->setInc("comment_count");
            if($incNum && $res){
                $comment->commit();
                return json(1);
            }else{
                $comment->rollback();
                return json(0);
            }
        }


        $article  = DB::name("articles")->where(["isdelete"=>0])->order(["id"=>"desc"])->column('id,title');
        $userinfo = DB::name("userinfos")->where(["isdelete"=>0])->order(["id"=>"desc"])->column("id,nickname");

        return view("add" , compact("article" , "userinfo"));
    }


    /**
     * 添加子评论
     * @author  yy
     * @date 2018/7/25
     *
     */
    public function childrenComment(){
        $id = input("id");

        if($this->request->isPost()){
            $data = $this->request->param();
            // 验证
            $result = $this->validate($data , ["content|评论内容" => "require|min:5"]);
            if($result !== true){
                return json(["code"=>-1 , "msg"=>$result]);
            }
            unset($data["id"]);
            $data['parent_id'] = $id;
            //开启事务
            $comment = new Comment();
            $comment->startTrans();

            $commentId = $comment->save($data);
            $commentResult = DB::name("articles")->where(["id"=>$data['article_id']])->setInc("comment_count");
            if($commentId && $commentResult){
                $comment->commit();
                return json(1);
            }else{
                $comment->rollback();
                return json(0);
            }

        }

        $comment = Comment::find($id);
        $userinfo = DB::name("userinfos")->where(["isdelete"=>0])->order(["id"=>"desc"])->column("id,nickname");

        return view('childrenComment' ,compact("comment" , "userinfo"));
    }



    /**
     * 审核+删除
     * @author  yy
     * @date 2018/7/25
     *
     */
    public function delete()
    {
        $id = $this->request->param("id");
        $type = $this->request->param("type");
        if (isset($type) && $type == "status") {
            $status = $this->request->param("status");
            $res = Comment::where(["id" => $id])->setField("status", $status);

            if($res){
                $this->success("操作成功！！！");
            }else{
                $this->error("操作失败！！！");
            }

        }


        $article_id = Comment::where(["id"=>$id])->value("article_id");

        $childern_id = Comment::where(["parent_id"=>$id,"article_id"=>$article_id])->column("id");
        array_push($childern_id , $id);

        Comment::startTrans();

        $res = Comment::where('id' , 'in' , $childern_id)->setField(["isdelete" =>1 , "delete_time"=>time()]);

        $comment_count = DB::name("articles")->where(["id"=>$article_id])->value("comment_count");

        //判断是否会有脏数据 影响数据的完整性
        $setNum = $comment_count > count($childern_id) ? (int)$comment_count - (int)count($childern_id) : 0;
        $decNum = DB::name("articles")->where(["id"=>$article_id])->setDec("comment_count" , $comment_count);

        if($res && $decNum){
            Comment::commit();
            $this->success("操作成功！！！");
        }else{
            Comment::rollback();
            $this->error("操作失败！！！");
        }


    }



}
