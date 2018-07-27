<?php

namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Request;
use app\admin\Model\ArticleModel as Article;
use app\admin\Model\CollectModel as Collect;
use think\DB;

class CollectController extends AdminBaseController
{
    /**
     * 收藏列表
     * @author  yy
     * @date 2018/7/27
     */
    public function index($id)
    {

        $article =  Article::find($id);

        $where["article_id"] = $id;
        $where["iscollect"] = 1;
        $collect_user = Collect::where($where)->select();

        return view("collect/index" , compact('collect_user' , 'article'));
    }

}
