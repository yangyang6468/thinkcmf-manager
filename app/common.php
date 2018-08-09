<?php

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


/**
 * 发送邮件
 * @author yy
 * @Date 2018/07/14
 * @param string $toMail 发送用户的邮箱
 * @param string $name 别名
 * @param string $title 正文
 * @param string $content 内容
 * @param string $file 附件的路径（绝对路径||相对路径）
 * @param string $filename 附件的别名
 * @return int 返回值
 */
function sendEmail($toMail='',$name='',$title='',$content='',$file='' ,$filename=''){

    //实例化PHPMailer核心类
    $mail = new \PHPMailer();

    //是否启用smtp的debug进行调试 开发环境建议开启 生产环境注释掉即可 默认关闭debug调试模式
    $mail->SMTPDebug = 1;

    //使用smtp鉴权方式发送邮件
    $mail->isSMTP();

    //smtp需要鉴权 这个必须是true
    $mail->SMTPAuth=true;

    //链接qq域名邮箱的服务器地址
    $mail->Host = 'smtp.163.com';

    //设置使用ssl加密方式登录鉴权
    $mail->SMTPSecure = 'ssl';

    //设置ssl连接smtp服务器的远程服务器端口号，以前的默认是25，但是现在新的好像已经不可用了 可选465或587
    $mail->Port = 465;

    //设置smtp的helo消息头 这个可有可无 内容任意
    // $mail->Helo = 'Hello smtp.qq.com Server';

    //设置发件人的主机域 可有可无 默认为localhost 内容任意，建议使用你的域名
    $mail->Hostname = 'http://localhost/';

    //设置发送的邮件的编码 可选GB2312 我喜欢utf-8 据说utf8在某些客户端收信下会乱码
    $mail->CharSet = 'UTF-8';

    //设置发件人姓名（昵称） 任意内容，显示在收件人邮件的发件人邮箱地址前的发件人姓名
    $mail->FromName = 'Forever21';

    //smtp登录的账号 这里填入字符串格式的qq号即可
    $mail->Username =config('EMAIL.username');

    //smtp登录的密码 使用生成的授权码（就刚才叫你保存的最新的授权码）
    $mail->Password = config('EMAIL.password');

    //设置发件人邮箱地址 这里填入上述提到的“发件人邮箱”
    $mail->From = config('EMAIL.username');

    //邮件正文是否为html编码 注意此处是一个方法 不再是属性 true或false
    $mail->isHTML(true);

    //设置收件人邮箱地址 该方法有两个参数 第一个参数为收件人邮箱地址 第二参数为给该地址设置的昵称 不同的邮箱系统会自动进行处理变动 这里第二个参数的意义不大
    $mail->addAddress($toMail,$name);

    //添加多个收件人 则多次调用方法即可
    // $mail->addAddress('xxx@163.com','zht在线通知');

    //添加该邮件的主题
    $mail->Subject = $title;

    //添加邮件正文 上方将isHTML设置成了true，则可以是完整的html字符串 如：使用file_get_contents函数读取本地的html文件
    $mail->Body = $content;

    //为该邮件添加附件 该方法也有两个参数 第一个参数为附件存放的目录（相对目录、或绝对目录均可） 第二参数为在邮件附件中该附件的名称
    if($file){
        $filename = $filename ? $filename : "file." . pathinfo($filename , "PATHINFO_EXTENSION");
        $mail->addAttachment($file,$filename);
    }

    //同样该方法可以多次调用 上传多个附件
    // $mail->addAttachment('./Jlib-1.1.0.js','Jlib.js');
    $status = $mail->send();

    if($status) {
        return 1;
    }else{
        return 0;
    }
}

/**
 * 时间轴开发
 * @author yy
 * @Date 2081/07/14
 * @param $time
 * @return bool|string
 */
function tranTime($time) {
    $rtime = date("m-d H:i",$time);
    $htime = date("H:i",$time);

    $time = time() - $time;

    if ($time < 60) {
        $str = '刚刚';
    }
    elseif ($time < 60 * 60) {
        $min = floor($time/60);
        $str = $min.'分钟前';
    }
    elseif ($time < 60 * 60 * 24) {
        $h = floor($time/(60*60));
        $str = $h.'小时前 '.$htime;
    }
    elseif ($time < 60 * 60 * 24 * 3) {
        $d = floor($time/(60*60*24));
        if($d==1)
            $str = '昨天 '.$rtime;
        else
            $str = '前天 '.$rtime;
    }
    else {
        $str = $rtime;
    }
    return $str;
}


/**
 * 字符串截取添加后缀
 * @author  yy
 * @date 2018/7/26
 * @param $str 字符串
 * @param $length 长度
 * @param string $suffix 添加的后缀
 * @param bool $isStr 中文 or 字母 默认中文
 */
function addSuffix($str , $length , $suffix='...' ,$isStr = true ){
    if(empty($str)){
        return;
    }

    if($isStr == true){
        if(mb_strlen($str , "utf-8") >= $length){
            $str = mb_substr($str , 0 , $length , 'utf-8') . $suffix;
        }else{
            $str = mb_substr($str , 0 , $length , 'utf-8');
        }
    }else{
        if(strlen($str) >= $length){
            $str = substr($str , 0 , $length) . $suffix;
        }else{
            $str = substr($str , 0 , $length);
        }
    }

    return $str;
}

/**
 * 设置图片路径
 * @author  yy
 * @date 2018/7/26
 * @param $img 图片路径
 * @param $flag 1 后台上传图片 2前台上传图片
 */
function showImage($img , $flag){
    if(!empty($img)){
        if($flag > 1){
            $img = config("MANAGER").$img;
        }else{
            $img = config("HOME").$img;
        }
    }else{
        return "//cdn.9dcj.com/aliyun/2018-07-31/5b601452b87f1.png";
    }

    return $img;
}

/**
 * @author  yy
 * @date 2018/7/31
 * 调接口获取参数
 * @param $curl 接口url
 * @param bool $https 是否https
 * @param string $method 请求方式 post/get
 * @param null $data post请求是的传值
 * @return mixed
 */
function _request($curl , $method='GET' , $data=null , $https=false){

    $ch=  curl_init();
    curl_setopt($ch,CURLOPT_URL,$curl);
    //参数为0表示不带头文件，为1表示带头文件
    curl_setopt($ch,CURLOPT_HEADER,false);

    //参数为1表示传输数据，为0表示直接输出显示。
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);

    if($https){
        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);
        curl_setopt($ch,CURLOPT_SSL_VERIFYHOST,TRUE);
    }

    if($method=='POST'){
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch,CURLOPT_POSTFIELDS,$data);
    }

    $content=  curl_exec($ch);

    curl_close($ch);

    return json_decode($content);
}

/**
 * @author  yy
 * @date 2018/7/31
 * 设置默认图像
 * @return string
 */
function setDefaultIcon(){
    return "//cdn.9dcj.com/aliyun/2018-07-31/5b601452b87f1.png";
}