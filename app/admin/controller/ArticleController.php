<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Db;
use app\admin\model\ArticleModel as Article;

class ArticleController extends AdminBaseController
{


    /**
     * 文章添加列表
     * @author  yy
     * @date 2018/07/12
     * @return mixed
     */
    public function index()
    {
        $param = Input();

        if(isset($param["category"]) && !empty($param['category'])){
            $where["category_id"] = $param["category"];
        }

        $param['start_time'] = isset($param['start_time']) ? isset($param['start_time']) : '';
        $param['end_time'] = isset($param['end_time']) ? isset($param['end_time']) : '';

        if($param['start_time'] && !$param['end_time']){
            $where["createtime"] = [">=" , strtotime($param['start_time']." 00:00:00")];
        }elseif (!$param['start_time'] && $param['end_time']){
            $where["createtime"] = ["<=" , strtotime($param['end_time']." 23:59:59")];
        }elseif ($param['start_time'] && $param['end_time']){
            $where["createtime"] = ["between" , [strtotime($param['start_time']." 00:00:00")
                ,strtotime($param['end_time']." 23:59:59")]];
        }


        if(isset($param['title']) && !empty(trim($param['title']))){
            $where["title"] = ["like" , "%". trim($param['title']) ."%"];
        }

        $where["isdelete"] = 0;

        $articles = Article::order("id desc")->where($where)->paginate(10);
        foreach ($articles as $k=>$v){

            $v["article_status"] = $v->getData("status");
        }

        $category = Db::name("category")->where(['isdelete'=>0])->column('id,name');

        $this->assign("articles" , $articles);
        $this->assign("category" , $category);
        return $this->fetch();
    }

    /**
     * 添加文章页面
     * @author  yy
     * @date
     * @return mixed
     */
    public function add()
    {
        $id = $this->request->param("id" , "0");
        if($id > 0){
            $article = Article::get($id);
            $article["img"] = $article->getData("photo");
            $article["category"] = $article->getData("category_id");
            $article["user"] = $article->getData("userid");
            $this->assign("article" , $article);
        }

        $user = Db::name("userinfos")->where(["isdelete"=>0,"status"=>1])->column("id,nickname,phone");
        $category = Db::name("category")->where(["isdelete"=>0])->column("id,name,status");
        $this->assign("userinfo" , $user);
        $this->assign("category" , $category);
        return $this->fetch();
    }


    /**
     * 添加文章提交
     * @author  yy
     * @date 2018/07/06
     *
     */
    public function addPost()
    {
        if ($this->request->isPost()) {
            $data   = $this->request->param();

            $post   = $data['post'];

            $rule = [
                'title|标题' => 'require|length:4,50|unique:articles',
                'info|内容'  => 'require|unique:articles',
                "category_id|标签" => 'require',
                "userid|用户"=>'require',
            ];

            $msg =["userid.require" => "请选择用户！！！"];

            $result = $this->validate($post, $rule , $msg);
            if ($result !== true) {
                $this->error($result);
            }

            if(isset($data["id"])){
                $post["updatetime"] = time();
                $res = Db::name("articles")->where(["id"=>$data["id"]])->update($post);
            }else{
                $post["createtime"] = $post["updatetime"] = time();

                $res = Db::name("articles")->insertGetId($post);
            }


            if($res){
                $this->success('操作成功!', url('article/index'));
            }else{
                $this->error('操作失败!');
            }


        }

    }


    /**
     * 开启/关闭/删除
     * @author  yy
     * @date 2018/07/13
     *
     */
    public function delete()
    {
        $param = $this->request->param();
        if(isset($param["type"])){
            $res = Db::name("articles")->where(["id"=>$param['id']])
                        ->update(["status"=>$param['status'],"updatetime"=>time()]);
        }else{
            if(isset($param["ids"])){
                $ids = implode(",",$param["ids"]);
                $res = Db::execute("update cmf_articles set isdelete=1 where id in ($ids)");
            }else{
                $res = Db::name("articles")->where(["id"=>$param['id']])->update(["isdelete"=>1]);
            }
        }
        if($res){
            $this->success("操作成功");
        }else{
            $this->success("操作失败");
        }



    }


    /**
     * 置顶
     * @author  yy
     * @date 2018/07/18
     * @param $id
     */
    public function top(){
        $param = $this->request->param();
        $ids = implode("," , $param["ids"]);
        $res = Db::execute("update cmf_articles set sticky=".$param['yes']." where id in ($ids)");
        if($res){
            $this->success("操作成功!!!");
        }else{
            $this->error("操作失败!!!");
        }
    }


    /**
     * 推荐
     * @author  yy
     * @date 2018/07/18
     * @param $id
     */
    public function recommend(){
        $param = $this->request->param();
        $ids = implode("," , $param["ids"]);
        $res = Db::execute("update cmf_articles set recommend=".$param['yes']." where id in ($ids)");
        if($res){
            $this->success("操作成功!!!");
        }else{
            $this->error("操作失败!!!");
        }
    }

}
