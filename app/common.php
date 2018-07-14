<?php

/**
 * 设置图片显示路径
 * @author yy
 * @Date 2018/07/14
 * @param $img
 * @return string
 */
function setImgUrl($img){
    if($img){
       $img = config('INDEX') . "/upload/" . $img;
    }
    return $img;
}

/**
 * 设置分页格式
 * @author yy
 * @Date 2018/07/14
 * @param $page
 * @param $total
 * @return string
 */
function setPage($page , $total){
    return "<ul class='pagination'>$page<li><span>共 $total 条记录</span></li></ul>";
}




