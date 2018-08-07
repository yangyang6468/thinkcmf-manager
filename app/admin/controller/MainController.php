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

use cmf\controller\AdminBaseController;
use think\DB;


class MainController extends AdminBaseController
{

    public function _initialize()
    {
        parent::_initialize();
    }

    /**
     * 后台首页(数据详情)
     * @author  yy
     * @date 2018/8/1
     * @return mixed
     */
    public function index()
    {
        $start = $this->request->param("start");
        $end = $this->request->param('end');
        // 结束的时间戳
        if(!$end){
            $endUnix = strtotime(date("Y-m-d 00:00:00" , time()));
        }else{
            $endUnix = strtotime($end ." 00:00:00");
        }

        if(!$start){
            $startUnix = $endUnix - 15*86400;
        }else{
            $startUnix = strtotime($start ." 00:00:00");
        }

        $result = $this->statistics($startUnix , $endUnix);

        $this->assign('start' , date("Y-m-d" , $startUnix));
        $this->assign('end' , date("Y-m-d" , $endUnix));

        $this->assign("table" , $result['y']);  //表格加载的数据
        $this->assign('x' , json_encode($result['x']));
        $this->assign("article" , json_encode($result['article']));
        $this->assign("register" , json_encode($result['register']));

        if($this->request->isAjax()){
            
            return $this->fetch('main/statistics');
        }else{
            return $this->fetch();
        }


    }


    /**
     * 统计公共方法
     * @author  yy
     * @date 2018/8/7
     * @param $start 开始时间
     * @param $end 结束时间
     */
    private function statistics($startUnix , $endUnix){
        //注册人数
        $registerSql = "select count(id) as register_count, FROM_UNIXTIME(createtime, '%Y-%m-%d') as datetime from cmf_userinfos where createtime>= $startUnix and createtime < $endUnix group by datetime";
        $registerResult = DB::query($registerSql);
        if($registerResult){
            foreach ($registerResult as $k=>$v){
                $r[$v['datetime']] = $v["register_count"];
            }
        }else{
            $r = [];
        }

        //发表文章
        $articleSql = "select count(id) as article_count, FROM_UNIXTIME(createtime, '%Y-%m-%d') as datetime from cmf_articles where createtime>= $startUnix and createtime < $endUnix group by datetime";
        $articleResult = DB::query($articleSql);

        if($articleResult){
            foreach ($articleResult as $k=>$v){
                $a[$v['datetime']] = $v["article_count"];
            }
        }else{
            $a = [];
        }

        $j=0;
        for($i = $startUnix; $i < $endUnix; $i += 86400) {  // 86400为1天的秒数
            //图标x轴时间显示
            $table[] = date("m/d" , $i);
            if($j%2 == 0){
                $x[] = date("m/d" , $i);
            }else{
                $x[] = '';
            }

            //注册数量判断
            if(!array_key_exists(date('Y-m-d' , $i) , $r)){
                $register[$j]=[date('Y-m-d' , $i) , 0];
            }else{
                $register[$j]=[date('Y-m-d' , $i) , $r[date('Y-m-d' , $i)]];
            }

            //添加文章数量判断
            if(!array_key_exists(date('Y-m-d' , $i) , $a)){
                $article[$j]=[date('Y-m-d' , $i) , 0];
            }else{
                $article[$j]=[date('Y-m-d' , $i) , $a[date('Y-m-d' , $i)]];
            }

            $j++;
        }

        return ['x'=>$x , 'y'=>$table , 'register'=>$register , 'article'=>$article];
    }




}
