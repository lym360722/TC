<?php /*a:6:{s:60:"D:\webs\tc.com\public/themes/default/portal\news_detail.html";i:1554347079;s:60:"D:\webs\tc.com\public/themes/default/portal\public\base.html";i:1554102357;s:60:"D:\webs\tc.com\public/themes/default/portal\public\head.html";i:1554285239;s:59:"D:\webs\tc.com\public/themes/default/portal\public\nav.html";i:1554190199;s:62:"D:\webs\tc.com\public/themes/default/portal\public\footer.html";i:1554341413;s:62:"D:\webs\tc.com\public/themes/default/portal\public\script.html";i:1554113636;}*/ ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<title><?php echo (isset($theme_vars['name']) && ($theme_vars['name'] !== '')?$theme_vars['name']:'ThinkCMF'); ?>-首页</title>
<link rel="stylesheet" href="/themes/default/portal/res/layui/css/layui.css">
<link rel="stylesheet" href="/themes/default/portal/res/static/css/index.css">

    </head>
    <body>
        <!-- nav部分 -->
        <div class="nav index">
            <div class="layui-container">
    <!-- 公司logo -->
    <div class="nav-logo">
        <a href="">
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
        
    <!-- main部分 -->
    <div class="main-newsdate">
        <div class="layui-container">
            <p class="news"><a href="news.html">实时新闻</a> > 新闻详情</p>
            <h1>这家引爆ins的奶茶店终于空降南昌，开放加盟啦！</h1>
            <p class="pushtime">发布时间：<span>2018-06-06</span></p>
            <p class="introTop">TA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。</p>
            <div><img src="/themes/default/portal/res/static/img/news_big.jpg" alt="新闻详情图"></div>
            <p class="introBott">北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！</p>
        </div>
    </div>


        <!-- footer部分 -->
        <div class="footer">
            
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
                    <div class="layui-col-sm6 layui-col-md8 layui-col-lg9">
                        <p class="contact-top"><i class="layui-icon layui-icon-cellphone"></i>&nbsp;400-8888888&nbsp;&nbsp;&nbsp;(9:00-18:00)</p>
                        <p class="contact-bottom"><i class="layui-icon layui-icon-home"></i>&nbsp;88888888@163.com</span></p>
                    </div>
                    <div class="layui-col-sm6 layui-col-md4 layui-col-lg3">
                        <p class="contact-top"><span class="right">广东省深圳市福田区滨河大道5003号爱地大厦东座15楼</span></p>
                        <p class="contact-bottom"><span class="right">Copyright&nbsp;©&nbsp;2016-2018 More Templates <a href="" target="_blank" title="金联智能">金联智能</a> - Collect from <a href="" title="金联智能" target="_blank">金联智能</a></span></p>
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
<!--<script src="/themes/default/portal/res/static/jquery-3.2.1.js"></script>-->
<!--<script type="text/javascript">-->
    <!--$(".layui-nav-item").click(function(){-->
        <!--$(this).attr("class","layui-nav-item layui-this");-->
    <!--});-->
<!--</script>-->

    </body>
</html>