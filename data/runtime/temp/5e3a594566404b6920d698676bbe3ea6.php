<?php /*a:3:{s:65:"D:\webs\tc.com\public/plugins/admin_journal/view/admin_index.html";i:1551951820;s:65:"D:\webs\tc.com\public/plugins/admin_journal/view/public\head.html";i:1547437584;s:68:"D:\webs\tc.com\public/plugins/admin_journal/view/public\scripts.html";i:1547437584;}*/ ?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Set render engine for 360 browser -->
<meta name="renderer" content="webkit">

<!-- No Baidu Siteapp-->
<meta http-equiv="Cache-Control" content="no-siteapp"/>

<link rel="shortcut icon" href="/plugins/admin_journal/view/public/assets/images/favicon.ico" type="image/x-icon">

<link href="/themes/admin_simpleboot3/public/assets/themes/<?php echo cmf_get_admin_style(); ?>/bootstrap.min.css" rel="stylesheet">
<link href="/themes/admin_simpleboot3/public/assets/simpleboot3/css/simplebootadmin.css" rel="stylesheet">
<link href="/static/font-awesome/css/font-awesome.min.css?page=index" rel="stylesheet" type="text/css">

<script type="text/javascript">
    //全局变量
    var GV = {
        ROOT: "/",
        WEB_ROOT: "/",
        JS_ROOT: "static/js/"
    };
</script>
    <title>ThinkCMF管理后台操作日志</title>
    <meta name="description" content="ThinkCMF管理后台操作日志">
    <meta name="keywords" content="后台操作日志">
</head>
<body>
<div class="wrap js-check-wrap">
    <ul class="nav nav-tabs">
        <li class="active"><a>操作日志</a></li>
    </ul>
    <form class="well form-inline margin-top-20" method="post" action="">
        <div class="search_type cc mb10">
            <div class="mb10">
                选择日期：
                <input type="text" class="form-control js-bootstrap-date" name="time" value="<?php echo $time; ?>" autocomplete="off">
                <input type="submit" class="btn btn-primary" value="搜索"/>
                <?php if($num != 0): ?>
                    共有 <?php echo $num; ?> 条相关记录
                <?php endif; ?>
                </span>
            </div>
        </div>
    </form>
    <form method="post" class="js-ajax-form" action="#">
        <div class="table_list">
            <table class="table table-hover table-bordered table-list">
                <thead>
                <tr>
                    <th width="50">UserId</th>
                    <th width="100">UserName</th>
                    <th width="50">Time</th>
                    <th width="100">IP</th>
                    <th>Request</th>
                    <th>Content</th>
                </tr>
                </thead>
                <tbody>
                <?php if(is_array($content) || $content instanceof \think\Collection || $content instanceof \think\Paginator): if( count($content)==0 ) : echo "" ;else: foreach($content as $key=>$vo): ?>
                    <tr>
                        <td><?php echo $vo['0']; ?></td>
                        <td><?php echo $vo['1']; ?></td>
                        <td><?php echo $vo['2']; ?></td>
                        <td><?php echo $vo['3']; ?></td>
                        <td><?php echo $vo['4']; ?></td>
                        <td style=" WORD-BREAK: break-all; WORD-WRAP: break-word"><?php echo json_encode($vo[5],JSON_UNESCAPED_UNICODE); ?></td>
                    </tr>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
                <thead>
                <tr>
                    <th width="50">UserId</th>
                    <th width="100">UserName</th>
                    <th width="50">Time</th>
                    <th width="100">IP</th>
                    <th>Request</th>
                    <th>Content</th>
                </tr>
                </thead>
            </table>
        </div>
    </form>
</div>
<script src="/static/js/jquery.js"></script>
<script src="/static/js/wind.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/admin.js"></script>
</body>
</html>
