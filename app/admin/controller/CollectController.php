<?php

namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Request;
use think\DB;
use app\admin\Model\ArticleModel as Article;

class CollectController extends AdminBaseController
{
    /**
     * 收藏列表
     * @author  yy
     * @date 2018/7/27
     */
    public function index(Request $request)
    {

        $id = $request->param('id');
        if(isset($id) && !empty($id)){
            $where["a.id"] = $id;
        }
        $where["a.isdelete"] = 0;
        $list = Article::alias('a')
                    ->field("a.id,a.title,count(c.article_id) as collectcount")
                    ->join("cmf_user_collect c" , "c.article_id = a.id and c.iscollect=1" , "left")
                    ->where($where)->group("a.id")->order("a.id" , "desc")->paginate(10);
//        dump(Db::getLastSql());

        $article = Article::where(["isdelete"=>0])->column("id,title");
        $start =  ($list->currentPage()-1)*$list->listRows(); //每页开的位置

        return view("collect/index" , compact('list', 'article', 'start', 'id' ));
    }

    /**
     * 收藏详情
     * @author  yy
     * @date 2018/8/17
     *
     */
    public function collectlist(){
        $article_id = input("id");

        $article = Article::find($article_id);

        $list = \app\admin\Model\CollectModel::where(["article_id"=>$article_id , "iscollect"=>1])->select();

        return view("collect/collectlist" , compact('list' ,'article'));
    }



}
