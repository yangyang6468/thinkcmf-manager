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

class UserinfoValidate extends Validate
{
    protected $rule = [
        'nickname|用戶名' => 'require|unique:userinfos,nickname|length:4,12',
        'password|密码' => 'require|length:6,20',
        'phone|电话号码'  => 'require|number|length:11|unique:userinfos,phone',
        'signature|个性签名' => 'require|length:4,20',

    ];

    protected $message = [

    ];

    protected $scene = [
        'insert' => ["nickname" , "phone" , "signature" , "password"],
        'update' => ["nickname" , "phone" , "signature"]
    ];
}