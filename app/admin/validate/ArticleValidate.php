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
namespace app\admin\validate;

use think\Validate;

class ArticleValidate extends Validate
{
    protected $rule = [
        'title|标题' => 'require|length:4,50|unique:articles',
        'info|内容'  => 'require|unique:articles',
        "category_id|标签" => 'require',
        "userid|用户"=>'require',

    ];

    protected $message = [
        "userid.require" => "请选择用户！！！"
    ];

    protected $scene = [
        'insert' => ["title", "info" , "category_id" , "userid"],
        'update' => ['title|标题' => 'require|length:4,50', 'info|内容'  => 'require', "category_id" , 'userid' ]
    ];
}