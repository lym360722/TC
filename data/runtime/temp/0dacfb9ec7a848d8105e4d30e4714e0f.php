<?php /*a:6:{s:61:"D:\webs\tc.com\public/themes/default/portal\\news_detail.html";i:1556003458;s:60:"D:\webs\tc.com\public/themes/default/portal\public\base.html";i:1555035968;s:60:"D:\webs\tc.com\public/themes/default/portal\public\head.html";i:1554714960;s:59:"D:\webs\tc.com\public/themes/default/portal\public\nav.html";i:1555041221;s:62:"D:\webs\tc.com\public/themes/default/portal\public\footer.html";i:1555639833;s:62:"D:\webs\tc.com\public/themes/default/portal\public\script.html";i:1555033153;}*/ ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<title><?php echo (isset($theme_vars['name']) && ($theme_vars['name'] !== '')?$theme_vars['name']:'ThinkCMF'); ?>-首页</title>
<link rel="stylesheet" href="/themes/default/portal/res/layui/css/layui.css">
<link rel="stylesheet" href="/themes/default/portal/res/static/css/index.css">
<style type="text/css">
	.page-item{
        float: left;
        font-size: 18px;
        line-height: 40px;
        height: 40px;
        margin-right: 20px;
        border-radius: 3px;
        color: #e3e3e3;
	}
</style>
    </head>
    <body>
        <!-- nav部分 -->
        <div class="nav index">
            <div class="layui-container">
    <!-- 公司logo -->
    <div class="nav-logo">
        <a href="Index">
            <!--公司Logo 判断是文字还是图片-->

                <?php if(empty($theme_vars['logo']) || (($theme_vars['logo'] instanceof \think\Collection || $theme_vars['logo'] instanceof \think\Paginator ) && $theme_vars['logo']->isEmpty())): ?>
                        <span style="font-size: 50px"><?php echo $theme_vars['site_name']; ?></span>
                    <?php else: ?>
                        <img src="<?php echo cmf_get_image_url($theme_vars['logo']); ?>" alt="金联智能" width="180" height="70" />
                <?php endif; ?>

            <!--end-->
        </a>
    </div>
    <div class="nav-list">
        <button>
            <span></span><span></span><span></span>
        </button>

        <!--导航栏开始-->

            <?php
/*start*/
if (!function_exists('__parse_navigation_30c86f829df17978e84d86d4fff5ebeb')) {
    function __parse_navigation_30c86f829df17978e84d86d4fff5ebeb($menus,$level=1){
        $_parse_navigation_func_name = '__parse_navigation_30c86f829df17978e84d86d4fff5ebeb';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="layui-nav-item">
    
                    <a href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
                
    </li>
<?php endif; if(!empty($menu['children'])): ?>
    <li class="layui-nav-item">
        
                    <a href="#" class="dropdown-toggle dropdown-toggle-<?php echo $level; ?>" data-toggle="dropdown">
                        <?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?><span class="caret"></span>
                    </a>
                
        <ul class="dropdown-menu dropdown-menu-level-<?php echo $level; ?>">
            <?php 
            $mLevel=$level+1;
             ?>
            <?php echo $_parse_navigation_func_name($menu['children'],$mLevel); ?>
        </ul>
    </li>
<?php endif; ?>
            
        <?php endforeach; endif; else: echo "" ;endif; 
    }
}
/*end*/
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if('ul'==''): ?>
    <?php echo __parse_navigation_30c86f829df17978e84d86d4fff5ebeb($menus); else: ?>
    <ul id="main-navigation" class="layui-nav">
        <?php echo __parse_navigation_30c86f829df17978e84d86d4fff5ebeb($menus); ?>
    </ul>
<?php endif; ?>


        <!--导航栏结束-->

    </div>
</div>

        </div>

        <!--内容部分-->
        
    <!-- banner部分 -->
    <?php
     $__SLIDE_ITEMS__ = \app\admin\service\ApiService::slides($theme_vars['top_slide']);
if(is_array($__SLIDE_ITEMS__) || $__SLIDE_ITEMS__ instanceof \think\Collection || $__SLIDE_ITEMS__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__SLIDE_ITEMS__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

        <div class="newsdate news" style="background:url(<?php echo cmf_get_image_url($vo['image']); ?>) no-repeat center top;background-size: cover;">
            <div class="title">
              <p><?php echo $vo['title']; ?></p>
              <p class="en"><?php echo $vo['description']; ?></p>
            </div>
        </div>
    
<?php endforeach; endif; else: echo "" ;endif; ?>
    <!-- main部分 -->
    <div class="main-newsdate">
        <div class="layui-container">
            <p class="news"><a href="news.html">实时新闻</a> > 新闻详情</p>
            <h1><?php echo $result['post_title']; ?></h1>
            <p class="pushtime">发布时间：<span><?php echo date('Y-m-d',!is_numeric($result['published_time'])? strtotime($result['published_time']) : $result['published_time']); ?></span></p>
            <div>
                <?php 
                    if(isset($result['more']['photos'])){
                       echo '<img src="'.cmf_get_image_url($result['more']['photos'][0]['url']).'" alt="新闻详情图">';
                    }else{
                        echo '<span>没有上传图片</span>';
                    }
                 ?>

            </div>
            <p class="introBott"><?php echo $result['post_content']; ?></p>
        <br /><br /><br />
        </div>
    </div>


        <!-- footer部分 -->
        <div class="footer">
            <?php 
    \think\facade\Hook::listen('float_menu_lite_plugin_before_body_end',null,null,false);
 ?>
    <div class="layui-container">

            <div class="links">
                <p class="footer-web">
                    <a href="#">合作伙伴：</a>
                 <?php
     $__LINKS__ = \app\admin\service\ApiService::links();
if(is_array($__LINKS__) || $__LINKS__ instanceof \think\Collection || $__LINKS__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LINKS__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                     <a href="<?php echo (isset($vo['url']) && ($vo['url'] !== '')?$vo['url']:''); ?>"><?php echo (isset($vo['name']) && ($vo['name'] !== '')?$vo['name']:''); ?></a>&nbsp;
                 
<?php endforeach; endif; else: echo "" ;endif; ?>
                </p>
            </div>

        <div class="layui-row footer-contact">
            <?php
     $__SLIDE_ITEMS__ = \app\admin\service\ApiService::slides($theme_vars['bottom_slide']);
if(is_array($__SLIDE_ITEMS__) || $__SLIDE_ITEMS__ instanceof \think\Collection || $__SLIDE_ITEMS__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__SLIDE_ITEMS__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                <div class="layui-col-sm2 layui-col-lg1">
                    <li>
                        <div class="panel">
                            <span class="title"><?php echo $vo['title']; ?></span>
                        </div>
                        <img src="<?php echo cmf_get_image_url($vo['image']); ?>" alt="">
                    </li>
                    <?php
    if(!isset($__SLIDE_ITEMS__)){
        $__SLIDE_ITEMS__ = \app\admin\service\ApiService::slides($theme_vars['top_slide']);
    }
if(count($__SLIDE_ITEMS__) == 0): ?>

                        <li>你还没有创建幻灯片;</li>
                    
<?php endif; ?>
                </div>
            
<?php endforeach; endif; else: echo "" ;endif; ?>
            <div class="layui-col-sm6 layui-col-lg10">
                <div class="layui-row">
                    <div class="layui-col-sm6 layui-col-md8 layui-col-lg6">
                        <p class="contact-top"><i class="layui-icon layui-icon-cellphone"></i><?php echo (isset($theme_vars['mobile']) && ($theme_vars['mobile'] !== '')?$theme_vars['mobile']:''); ?>(9:00-18:00)</p>
                        <p class="contact-bottom"><i class="layui-icon layui-icon-home"></i><?php echo (isset($theme_vars['email']) && ($theme_vars['email'] !== '')?$theme_vars['email']:''); ?></span></p>
                    </div>
                    <div class="layui-col-sm6 layui-col-md6 layui-col-lg6">
                        <p class="contact-top">
                            <span class="right"><?php echo (isset($theme_vars['address']) && ($theme_vars['address'] !== '')?$theme_vars['address']:''); ?></span>
                        </p>
                        <p class="contact-bottom">
                            <span class="right">
                                ICP备：<?php echo (isset($theme_vars['ICP']) && ($theme_vars['ICP'] !== '')?$theme_vars['ICP']:''); ?>公安网备：<?php echo (isset($theme_vars['public']) && ($theme_vars['public'] !== '')?$theme_vars['public']:''); ?>
                                <a href="" target="_blank" title="<?php echo (isset($theme_vars['name']) && ($theme_vars['name'] !== '')?$theme_vars['name']:''); ?>"><?php echo (isset($theme_vars['name']) && ($theme_vars['name'] !== '')?$theme_vars['name']:''); ?></a>
                                - Collect from
                                <a href="" title="<?php echo (isset($theme_vars['name']) && ($theme_vars['name'] !== '')?$theme_vars['name']:''); ?>" target="_blank"><?php echo (isset($theme_vars['name']) && ($theme_vars['name'] !== '')?$theme_vars['name']:''); ?></a>
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

        </div>

        <script src="/themes/default/portal/res/layui/layui.js"></script>
<!--[if lt IE 9]>
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

<![endif]-->


<script>
    layui.config({
        base: '/themes/default/portal/res/static/js/'
    }).use('firm');
</script>




    </body>
    <script src="/themes/default/portal/res/static/jquery-3.2.1.js"></script>
    <!--toTop-->
    <script type="text/javascript">
        var backToTopEle = $('<ul class="layui-fixbar">\n' +
            '            <li class="layui-icon layui-fixbar-top" lay-type="top" style="display: list-item;"></li>\n' +
            '        </ul>').appendTo($("body")).click(function() {
            $("html, body").animate({ scrollTop: 0 }, 120);
        });
        var backToTopFun = function() {
            var st = $(document).scrollTop(),
                winh = $(window).height();
            (st > 0) ? backToTopEle.show(): backToTopEle.hide();
            if(!window.XMLHttpRequest) {
                backToTopEle.css("top", st + winh - 166);
            }
        };

        $(function() {
            $(window).on("scroll", backToTopFun);
            backToTopFun();
        });
    </script>
</html>