/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.21 : Database - tc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tc` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `tc`;

/*Table structure for table `cmf_admin_menu` */

DROP TABLE IF EXISTS `cmf_admin_menu`;

CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

/*Data for the table `cmf_admin_menu` */

insert  into `cmf_admin_menu`(`id`,`parent_id`,`type`,`status`,`list_order`,`app`,`controller`,`action`,`param`,`name`,`icon`,`remark`) values (1,0,0,1,20,'admin','Plugin','default','','插件中心','cloud','插件中心'),(2,1,1,1,10000,'admin','Hook','index','','钩子管理','','钩子管理'),(3,2,1,0,10000,'admin','Hook','plugins','','钩子插件管理','','钩子插件管理'),(4,2,2,0,10000,'admin','Hook','pluginListOrder','','钩子插件排序','','钩子插件排序'),(5,2,1,0,10000,'admin','Hook','sync','','同步钩子','','同步钩子'),(6,0,0,1,0,'admin','Setting','default','','设置','cogs','系统设置入口'),(7,6,1,1,50,'admin','Link','index','','友情链接','','友情链接管理'),(8,7,1,0,10000,'admin','Link','add','','添加友情链接','','添加友情链接'),(9,7,2,0,10000,'admin','Link','addPost','','添加友情链接提交保存','','添加友情链接提交保存'),(10,7,1,0,10000,'admin','Link','edit','','编辑友情链接','','编辑友情链接'),(11,7,2,0,10000,'admin','Link','editPost','','编辑友情链接提交保存','','编辑友情链接提交保存'),(12,7,2,0,10000,'admin','Link','delete','','删除友情链接','','删除友情链接'),(13,7,2,0,10000,'admin','Link','listOrder','','友情链接排序','','友情链接排序'),(14,7,2,0,10000,'admin','Link','toggle','','友情链接显示隐藏','','友情链接显示隐藏'),(15,6,1,1,10,'admin','Mailer','index','','邮箱配置','','邮箱配置'),(16,15,2,0,10000,'admin','Mailer','indexPost','','邮箱配置提交保存','','邮箱配置提交保存'),(17,15,1,0,10000,'admin','Mailer','template','','邮件模板','','邮件模板'),(18,15,2,0,10000,'admin','Mailer','templatePost','','邮件模板提交','','邮件模板提交'),(19,15,1,0,10000,'admin','Mailer','test','','邮件发送测试','','邮件发送测试'),(20,6,1,0,10000,'admin','Menu','index','','后台菜单','','后台菜单管理'),(21,20,1,0,10000,'admin','Menu','lists','','所有菜单','','后台所有菜单列表'),(22,20,1,0,10000,'admin','Menu','add','','后台菜单添加','','后台菜单添加'),(23,20,2,0,10000,'admin','Menu','addPost','','后台菜单添加提交保存','','后台菜单添加提交保存'),(24,20,1,0,10000,'admin','Menu','edit','','后台菜单编辑','','后台菜单编辑'),(25,20,2,0,10000,'admin','Menu','editPost','','后台菜单编辑提交保存','','后台菜单编辑提交保存'),(26,20,2,0,10000,'admin','Menu','delete','','后台菜单删除','','后台菜单删除'),(27,20,2,0,10000,'admin','Menu','listOrder','','后台菜单排序','','后台菜单排序'),(28,20,1,0,10000,'admin','Menu','getActions','','导入新后台菜单','','导入新后台菜单'),(29,6,1,1,30,'admin','Nav','index','','导航管理','','导航管理'),(30,29,1,0,10000,'admin','Nav','add','','添加导航','','添加导航'),(31,29,2,0,10000,'admin','Nav','addPost','','添加导航提交保存','','添加导航提交保存'),(32,29,1,0,10000,'admin','Nav','edit','','编辑导航','','编辑导航'),(33,29,2,0,10000,'admin','Nav','editPost','','编辑导航提交保存','','编辑导航提交保存'),(34,29,2,0,10000,'admin','Nav','delete','','删除导航','','删除导航'),(35,29,1,0,10000,'admin','NavMenu','index','','导航菜单','','导航菜单'),(36,35,1,0,10000,'admin','NavMenu','add','','添加导航菜单','','添加导航菜单'),(37,35,2,0,10000,'admin','NavMenu','addPost','','添加导航菜单提交保存','','添加导航菜单提交保存'),(38,35,1,0,10000,'admin','NavMenu','edit','','编辑导航菜单','','编辑导航菜单'),(39,35,2,0,10000,'admin','NavMenu','editPost','','编辑导航菜单提交保存','','编辑导航菜单提交保存'),(40,35,2,0,10000,'admin','NavMenu','delete','','删除导航菜单','','删除导航菜单'),(41,35,2,0,10000,'admin','NavMenu','listOrder','','导航菜单排序','','导航菜单排序'),(42,1,1,1,10000,'admin','Plugin','index','','插件列表','','插件列表'),(43,42,2,0,10000,'admin','Plugin','toggle','','插件启用禁用','','插件启用禁用'),(44,42,1,0,10000,'admin','Plugin','setting','','插件设置','','插件设置'),(45,42,2,0,10000,'admin','Plugin','settingPost','','插件设置提交','','插件设置提交'),(46,42,2,0,10000,'admin','Plugin','install','','插件安装','','插件安装'),(47,42,2,0,10000,'admin','Plugin','update','','插件更新','','插件更新'),(48,42,2,0,10000,'admin','Plugin','uninstall','','卸载插件','','卸载插件'),(49,110,0,1,10000,'admin','User','default','','管理组','','管理组'),(50,49,1,1,10000,'admin','Rbac','index','','角色管理','','角色管理'),(51,50,1,0,10000,'admin','Rbac','roleAdd','','添加角色','','添加角色'),(52,50,2,0,10000,'admin','Rbac','roleAddPost','','添加角色提交','','添加角色提交'),(53,50,1,0,10000,'admin','Rbac','roleEdit','','编辑角色','','编辑角色'),(54,50,2,0,10000,'admin','Rbac','roleEditPost','','编辑角色提交','','编辑角色提交'),(55,50,2,0,10000,'admin','Rbac','roleDelete','','删除角色','','删除角色'),(56,50,1,0,10000,'admin','Rbac','authorize','','设置角色权限','','设置角色权限'),(57,50,2,0,10000,'admin','Rbac','authorizePost','','角色授权提交','','角色授权提交'),(58,0,1,0,10000,'admin','RecycleBin','index','','回收站','','回收站'),(59,58,2,0,10000,'admin','RecycleBin','restore','','回收站还原','','回收站还原'),(60,58,2,0,10000,'admin','RecycleBin','delete','','回收站彻底删除','','回收站彻底删除'),(61,6,1,1,10000,'admin','Route','index','','URL美化','','URL规则管理'),(62,61,1,0,10000,'admin','Route','add','','添加路由规则','','添加路由规则'),(63,61,2,0,10000,'admin','Route','addPost','','添加路由规则提交','','添加路由规则提交'),(64,61,1,0,10000,'admin','Route','edit','','路由规则编辑','','路由规则编辑'),(65,61,2,0,10000,'admin','Route','editPost','','路由规则编辑提交','','路由规则编辑提交'),(66,61,2,0,10000,'admin','Route','delete','','路由规则删除','','路由规则删除'),(67,61,2,0,10000,'admin','Route','ban','','路由规则禁用','','路由规则禁用'),(68,61,2,0,10000,'admin','Route','open','','路由规则启用','','路由规则启用'),(69,61,2,0,10000,'admin','Route','listOrder','','路由规则排序','','路由规则排序'),(70,61,1,0,10000,'admin','Route','select','','选择URL','','选择URL'),(71,6,1,1,0,'admin','Setting','site','','网站信息','','网站信息'),(72,71,2,0,10000,'admin','Setting','sitePost','','网站信息设置提交','','网站信息设置提交'),(73,6,1,0,10000,'admin','Setting','password','','密码修改','','密码修改'),(74,73,2,0,10000,'admin','Setting','passwordPost','','密码修改提交','','密码修改提交'),(75,6,1,1,10000,'admin','Setting','upload','','上传设置','','上传设置'),(76,75,2,0,10000,'admin','Setting','uploadPost','','上传设置提交','','上传设置提交'),(77,6,1,0,10000,'admin','Setting','clearCache','','清除缓存','','清除缓存'),(78,6,1,1,40,'admin','Slide','index','','幻灯片管理','','幻灯片管理'),(79,78,1,0,10000,'admin','Slide','add','','添加幻灯片','','添加幻灯片'),(80,78,2,0,10000,'admin','Slide','addPost','','添加幻灯片提交','','添加幻灯片提交'),(81,78,1,0,10000,'admin','Slide','edit','','编辑幻灯片','','编辑幻灯片'),(82,78,2,0,10000,'admin','Slide','editPost','','编辑幻灯片提交','','编辑幻灯片提交'),(83,78,2,0,10000,'admin','Slide','delete','','删除幻灯片','','删除幻灯片'),(84,78,1,0,10000,'admin','SlideItem','index','','幻灯片页面列表','','幻灯片页面列表'),(85,84,1,0,10000,'admin','SlideItem','add','','幻灯片页面添加','','幻灯片页面添加'),(86,84,2,0,10000,'admin','SlideItem','addPost','','幻灯片页面添加提交','','幻灯片页面添加提交'),(87,84,1,0,10000,'admin','SlideItem','edit','','幻灯片页面编辑','','幻灯片页面编辑'),(88,84,2,0,10000,'admin','SlideItem','editPost','','幻灯片页面编辑提交','','幻灯片页面编辑提交'),(89,84,2,0,10000,'admin','SlideItem','delete','','幻灯片页面删除','','幻灯片页面删除'),(90,84,2,0,10000,'admin','SlideItem','ban','','幻灯片页面隐藏','','幻灯片页面隐藏'),(91,84,2,0,10000,'admin','SlideItem','cancelBan','','幻灯片页面显示','','幻灯片页面显示'),(92,84,2,0,10000,'admin','SlideItem','listOrder','','幻灯片页面排序','','幻灯片页面排序'),(93,6,1,1,10000,'admin','Storage','index','','文件存储','','文件存储'),(94,93,2,0,10000,'admin','Storage','settingPost','','文件存储设置提交','','文件存储设置提交'),(95,6,1,1,20,'admin','Theme','index','','模板管理','','模板管理'),(96,95,1,0,10000,'admin','Theme','install','','安装模板','','安装模板'),(97,95,2,0,10000,'admin','Theme','uninstall','','卸载模板','','卸载模板'),(98,95,2,0,10000,'admin','Theme','installTheme','','模板安装','','模板安装'),(99,95,2,0,10000,'admin','Theme','update','','模板更新','','模板更新'),(100,95,2,0,10000,'admin','Theme','active','','启用模板','','启用模板'),(101,95,1,0,10000,'admin','Theme','files','','模板文件列表','','启用模板'),(102,95,1,0,10000,'admin','Theme','fileSetting','','模板文件设置','','模板文件设置'),(103,95,1,0,10000,'admin','Theme','fileArrayData','','模板文件数组数据列表','','模板文件数组数据列表'),(104,95,2,0,10000,'admin','Theme','fileArrayDataEdit','','模板文件数组数据添加编辑','','模板文件数组数据添加编辑'),(105,95,2,0,10000,'admin','Theme','fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存','','模板文件数组数据添加编辑提交保存'),(106,95,2,0,10000,'admin','Theme','fileArrayDataDelete','','模板文件数组数据删除','','模板文件数组数据删除'),(107,95,2,0,10000,'admin','Theme','settingPost','','模板文件编辑提交保存','','模板文件编辑提交保存'),(108,95,1,0,10000,'admin','Theme','dataSource','','模板文件设置数据源','','模板文件设置数据源'),(109,95,1,0,10000,'admin','Theme','design','','模板设计','','模板设计'),(110,0,0,1,10,'user','AdminIndex','default','','用户管理','group','用户管理'),(111,49,1,1,10000,'admin','User','index','','管理员','','管理员管理'),(112,111,1,0,10000,'admin','User','add','','管理员添加','','管理员添加'),(113,111,2,0,10000,'admin','User','addPost','','管理员添加提交','','管理员添加提交'),(114,111,1,0,10000,'admin','User','edit','','管理员编辑','','管理员编辑'),(115,111,2,0,10000,'admin','User','editPost','','管理员编辑提交','','管理员编辑提交'),(116,111,1,0,10000,'admin','User','userInfo','','个人信息','','管理员个人信息修改'),(117,111,2,0,10000,'admin','User','userInfoPost','','管理员个人信息修改提交','','管理员个人信息修改提交'),(118,111,2,0,10000,'admin','User','delete','','管理员删除','','管理员删除'),(119,111,2,0,10000,'admin','User','ban','','停用管理员','','停用管理员'),(120,111,2,0,10000,'admin','User','cancelBan','','启用管理员','','启用管理员'),(121,0,1,0,10000,'user','AdminAsset','index','','资源管理','file','资源管理列表'),(122,121,2,0,10000,'user','AdminAsset','delete','','删除文件','','删除文件'),(123,110,0,1,10000,'user','AdminIndex','default1','','用户组','','用户组'),(124,123,1,1,10000,'user','AdminIndex','index','','本站用户','','本站用户'),(125,124,2,0,10000,'user','AdminIndex','ban','','本站用户拉黑','','本站用户拉黑'),(126,124,2,0,10000,'user','AdminIndex','cancelBan','','本站用户启用','','本站用户启用'),(127,123,1,1,10000,'user','AdminOauth','index','','第三方用户','','第三方用户'),(128,127,2,0,10000,'user','AdminOauth','delete','','删除第三方用户绑定','','删除第三方用户绑定'),(129,6,1,1,10000,'user','AdminUserAction','index','','用户操作管理','','用户操作管理'),(130,129,1,0,10000,'user','AdminUserAction','edit','','编辑用户操作','','编辑用户操作'),(131,129,2,0,10000,'user','AdminUserAction','editPost','','编辑用户操作提交','','编辑用户操作提交'),(132,129,1,0,10000,'user','AdminUserAction','sync','','同步用户操作','','同步用户操作'),(162,0,0,1,30,'portal','AdminIndex','default','','门户管理','th','门户管理'),(163,162,1,1,10000,'portal','AdminArticle','index','','文章管理','','文章列表'),(164,163,1,0,10000,'portal','AdminArticle','add','','添加文章','','添加文章'),(165,163,2,0,10000,'portal','AdminArticle','addPost','','添加文章提交','','添加文章提交'),(166,163,1,0,10000,'portal','AdminArticle','edit','','编辑文章','','编辑文章'),(167,163,2,0,10000,'portal','AdminArticle','editPost','','编辑文章提交','','编辑文章提交'),(168,163,2,0,10000,'portal','AdminArticle','delete','','文章删除','','文章删除'),(169,163,2,0,10000,'portal','AdminArticle','publish','','文章发布','','文章发布'),(170,163,2,0,10000,'portal','AdminArticle','top','','文章置顶','','文章置顶'),(171,163,2,0,10000,'portal','AdminArticle','recommend','','文章推荐','','文章推荐'),(172,163,2,0,10000,'portal','AdminArticle','listOrder','','文章排序','','文章排序'),(173,162,1,1,10000,'portal','AdminCategory','index','','分类管理','','文章分类列表'),(174,173,1,0,10000,'portal','AdminCategory','add','','添加文章分类','','添加文章分类'),(175,173,2,0,10000,'portal','AdminCategory','addPost','','添加文章分类提交','','添加文章分类提交'),(176,173,1,0,10000,'portal','AdminCategory','edit','','编辑文章分类','','编辑文章分类'),(177,173,2,0,10000,'portal','AdminCategory','editPost','','编辑文章分类提交','','编辑文章分类提交'),(178,173,1,0,10000,'portal','AdminCategory','select','','文章分类选择对话框','','文章分类选择对话框'),(179,173,2,0,10000,'portal','AdminCategory','listOrder','','文章分类排序','','文章分类排序'),(180,173,2,0,10000,'portal','AdminCategory','toggle','','文章分类显示隐藏','','文章分类显示隐藏'),(181,173,2,0,10000,'portal','AdminCategory','delete','','删除文章分类','','删除文章分类'),(182,162,1,1,10000,'portal','AdminPage','index','','页面管理','','页面管理'),(183,182,1,0,10000,'portal','AdminPage','add','','添加页面','','添加页面'),(184,182,2,0,10000,'portal','AdminPage','addPost','','添加页面提交','','添加页面提交'),(185,182,1,0,10000,'portal','AdminPage','edit','','编辑页面','','编辑页面'),(186,182,2,0,10000,'portal','AdminPage','editPost','','编辑页面提交','','编辑页面提交'),(187,182,2,0,10000,'portal','AdminPage','delete','','删除页面','','删除页面'),(188,162,1,1,10000,'portal','AdminTag','index','','文章标签','','文章标签'),(189,188,1,0,10000,'portal','AdminTag','add','','添加文章标签','','添加文章标签'),(190,188,2,0,10000,'portal','AdminTag','addPost','','添加文章标签提交','','添加文章标签提交'),(191,188,2,0,10000,'portal','AdminTag','upStatus','','更新标签状态','','更新标签状态'),(192,188,2,0,10000,'portal','AdminTag','delete','','删除文章标签','','删除文章标签'),(193,1,1,1,10000,'plugin/AdminJournal','AdminIndex','index','','操作日志','','操作日志'),(194,1,1,1,10000,'plugin/Wxapp','AdminIndex','index','','小程序管理','','小程序管理'),(195,194,1,0,10000,'plugin/Wxapp','AdminWxapp','add','','添加小程序','','添加小程序'),(196,194,2,0,10000,'plugin/Wxapp','AdminWxapp','addPost','','添加小程序提交保存','','添加小程序提交保存'),(197,194,1,0,10000,'plugin/Wxapp','AdminWxapp','edit','','编辑小程序','','编辑小程序'),(198,194,2,0,10000,'plugin/Wxapp','AdminWxapp','editPost','','编辑小程序提交保存','','编辑小程序'),(199,194,2,0,10000,'plugin/Wxapp','AdminWxapp','delete','','删除小程序','','删除小程序');

/*Table structure for table `cmf_asset` */

DROP TABLE IF EXISTS `cmf_asset`;

CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

/*Data for the table `cmf_asset` */

insert  into `cmf_asset`(`id`,`user_id`,`file_size`,`create_time`,`status`,`download_times`,`file_key`,`filename`,`file_path`,`file_md5`,`file_sha1`,`suffix`,`more`) values (1,1,21481,1554171815,1,0,'1040ea81f1d75055c5987a855ea874deb49516c0216b747169a323b37d880c41','335caf24542ed01f8e552544ca50e765.png','default/20190402/4b5a2bd0a6d328f1315eed21e6b27135.png','1040ea81f1d75055c5987a855ea874de','ddcd5e2b9376db543b4a616c3797349f9ef29e54','png',NULL),(2,1,63727,1554174615,1,0,'fb26454437c89cbe51531e9e5b93c80e822aaa8a75cd4c668e9c32b7eab7d4b3','335caf24542ed01f8e552544ca50e76.png','default/20190402/3dc1f286070e42fcc3f93ab812cd1923.png','fb26454437c89cbe51531e9e5b93c80e','6771db5ce237fb4ddf2eb0713d1d6b1f94a20665','png',NULL),(3,1,325781,1554177349,1,0,'7eb83361c57dc762493d937381938176dca22991ba215e0ab34cb201c654de12','banner1.jpg','default/20190402/6b49d277458b550557d202ba04caa598.jpg','7eb83361c57dc762493d937381938176','ae14a72aa0c741ab83badad92d0297c21d89e284','jpg',NULL),(4,1,289454,1554177403,1,0,'3b1b79b7bfda8e8841538b7291782506eb429d366a6376853bde3e6772ad9d7d','banner2.jpg','default/20190402/ff24ddb88e935fbfbee883fe48f97bd1.jpg','3b1b79b7bfda8e8841538b7291782506','c643020d2af904b56e93d8269145cd698d663506','jpg',NULL),(5,1,170265,1554192454,1,0,'5ab588891ec20fbf21000f79e4a92872931c85f8c0b2cdcababf2d06333db9b7','032831b9cba085f7f1e747ac55082698.jpg','default/20190402/6aa05c6e2f89c7e6d0c90185b77ee4cc.jpg','5ab588891ec20fbf21000f79e4a92872','837189ab00521b39b0b572b089beb73b6525f76f','jpg',NULL),(6,1,172002,1554192489,1,0,'4af9ac40c23a2ee32077e29fe9c447cc7b89b09cde9106b00224993b61262d5c','042aeab20d68d930c7bc1c1c44169dee.jpg','default/20190402/78b6fbdcc75ea5610fa2b43df87fd8ad.jpg','4af9ac40c23a2ee32077e29fe9c447cc','08e3c38ff881e3e4c5d8d79bbd2dc62aa4721a65','jpg',NULL),(7,1,91996,1554192519,1,0,'29cc1b3938a1028edc1b09bd2828665fa57ca594161c873b43daa42441eb23d0','08c02ea6f1168a7a5f9697580c7546cb.jpg','default/20190402/ee9b2b9be7a8db2e227cb7b35fa41273.jpg','29cc1b3938a1028edc1b09bd2828665f','0dbe3cf7e99f977e154238f46018ca674490053d','jpg',NULL),(8,1,2920,1554193814,1,0,'f34b056b9160f370bb4cba56ca4fdc183d7661ad9e32e413db6f36f3fcfe356e','Big_icon1.png','portal/20190402/a21f9276801af4f6c9a1ee705af7ebb7.png','f34b056b9160f370bb4cba56ca4fdc18','fda352e1fe40982829a082fded6d6fa4320dc831','png',NULL),(9,1,2165,1554193859,1,0,'27bab0504c1ffe97b3a0597c47fc4bbf324c1aa43aa6d7608fb0e698994758f9','Big_icon2.png','portal/20190402/dc0961fdd80a06e99b5eb02276ff9d48.png','27bab0504c1ffe97b3a0597c47fc4bbf','f60c182f6823fa86b03c06c2433871bd8f871097','png',NULL),(10,1,3326,1554193898,1,0,'30c3804c8eeb10fc1021e76a62ebb609b2aec53767a2472ba1a983df410d5e64','Big_icon3.png','portal/20190402/647a9e5a95e61d9bd7185bf873b8ca6b.png','30c3804c8eeb10fc1021e76a62ebb609','c95566725fac8491fe36705f79316a54d340a139','png',NULL),(11,1,1611,1554193929,1,0,'21911649e1292399373950dfa2b9acbfc000fcf686c2253304e4b81257dfd367','Big_icon4.png','portal/20190402/c81d344fce432d6a39a05c4d110eda21.png','21911649e1292399373950dfa2b9acbf','5a7e78e5637afb6c1d085bdea6e72099518d9e92','png',NULL),(12,1,18107,1554256017,1,0,'8e7104e94ab1cb641dfb3bee60f207dcd69aa7e76c1927d10c197ba6381c196f','home_img1.jpg','portal/20190403/3584f06b49f5c01ef344a016446344ab.jpg','8e7104e94ab1cb641dfb3bee60f207dc','90dbb4bec79ca3c634b861a0bf9f1d90b53075a4','jpg',NULL),(13,1,39635,1554256303,1,0,'07fdf0c869a1e500bfc02688e7c63db4a4ed2aa8f4926648655958e7570d8c5a','home_img2.jpg','portal/20190403/9fe39853a8d7aeb36f9ad8bce0198505.jpg','07fdf0c869a1e500bfc02688e7c63db4','9cc2858685d89137ec6315e61c2df767ff64853a','jpg',NULL),(14,1,29268,1554256355,1,0,'d90bb9f54b8ca86c80353f9554a104bee654670d835e9d1ac039887267a4b293','home_img3.jpg','portal/20190403/a004d67dd5b07ff368e23029528e1ec4.jpg','d90bb9f54b8ca86c80353f9554a104be','a9e4e51f6cdfbbccfe3f925e0c5a3adc845a59c5','jpg',NULL),(15,1,24746,1554256413,1,0,'86838467119e6ab70cbeea58eddb74a5514d8bc1b6454c162121ecf2eb80cb48','home_img4.jpg','portal/20190403/c9725b00536d0c25d0f26316dbb01740.jpg','86838467119e6ab70cbeea58eddb74a5','42e4a62fc0525262966592e45d265c4ae15aacd9','jpg',NULL),(16,1,15049,1554264255,1,0,'394d4ef2f5f9dd1a1141edee9cf4fd2954821a2c7bbd603ba673a8df8270cc9d','news_img1.jpg','portal/20190403/17fbac77ad1a6c38ebfa10f67177a6da.jpg','394d4ef2f5f9dd1a1141edee9cf4fd29','dee69f2a4edae0d35e2c448c4fa167c732518dcd','jpg',NULL),(17,1,20363,1554277187,1,0,'efb6aad8e4ecbd89052a0e27def386e6525537e07aa0585da9aa463523284523','case1.jpg','portal/20190403/43714e969452d0ee932ece75164851a7.jpg','efb6aad8e4ecbd89052a0e27def386e6','c064efb4d38f1837b56594821bbc37c73d2b1c3f','jpg',NULL),(18,1,14102,1554277230,1,0,'8ce959e3095e392fd7f8c63177cfac0a0055a0c2a70555e9d7ade281b0bbfd2e','case2.jpg','portal/20190403/6ce0a43d80c617c8ef031395a6f99faf.jpg','8ce959e3095e392fd7f8c63177cfac0a','bdebe67a0cced84cd9fc1145d1c300f8664279c5','jpg',NULL),(19,1,15514,1554277268,1,0,'12993f4446443c2d7f25596512720cdf9ccc55e3adb6c004c0fe3c2eee4b61b0','case3.jpg','portal/20190403/9871b051460eafa833ad6e7178cc8858.jpg','12993f4446443c2d7f25596512720cdf','cb6885c5cb999fad9cb35884235b9887638626f4','jpg',NULL),(20,1,20058,1554277297,1,0,'c64c0069727708f55646a135eba53c4f3b37024cfaedcd4eaf0f055b6a31c74b','case4.jpg','portal/20190403/ddff011864397274218030c2ad89cef6.jpg','c64c0069727708f55646a135eba53c4f','1cd6beb4a4bb840e82eb2cfba570885d71fdd3b3','jpg',NULL),(21,1,20820,1554277335,1,0,'d80f7d89969851465634660e03e4f92224b0a44d9f85e26dc9719bfe3633aafe','case5.jpg','portal/20190403/3ab00cd8d8a2d970805fc4067980e5da.jpg','d80f7d89969851465634660e03e4f922','e12b2ee0e696e30aa328ac471a5957788269eec6','jpg',NULL),(22,1,12020,1554277361,1,0,'f68e176f6435116b447be049f139e0fa65c488af114cc49a8d93b1a4d9ebdcc8','case6.jpg','portal/20190403/98e77c133fbe066ff656b3b87e571747.jpg','f68e176f6435116b447be049f139e0fa','04a2c7e960f45e37e0b891971f1812a402985507','jpg',NULL),(23,1,111147,1554279993,1,0,'58a3ee19fdd8c6473532ca9463b90077baaceaa0473ed129bf370a06ff522a02','us_img1.jpg','portal/20190403/b1f1ad51fa7480d32d8a6f3476ea0b27.jpg','58a3ee19fdd8c6473532ca9463b90077','d73acd1dc4592a29f0fd347f7e1792177206eb9a','jpg',NULL),(24,1,42321,1554280031,1,0,'ebeeb8f691d4836161e6bde902abf265bedbabaff0328ec6413b22e5a4fb8b7b','us_img2.jpg','portal/20190403/4005c2cdbb37df2a565297b87e91b2bf.jpg','ebeeb8f691d4836161e6bde902abf265','6323daa0ce4db4363cf8334c83d3d068099709f4','jpg',NULL),(25,1,77813,1554280067,1,0,'f9d546081201d174ffe28d6e5b24207cc88abc59a6fe1e1c4e7a5e0b453c2ee5','us_img3.jpg','portal/20190403/aa6059e49e01882b47890544afdaba27.jpg','f9d546081201d174ffe28d6e5b24207c','4255ec3af4d2b887c07cad7db973e581a43c32eb','jpg',NULL),(26,1,57396,1554280181,1,0,'c6035a74237d5db8c5fecf9f27aed033f5265bb1a867f8bfe712481860975e94','us_img4.png','portal/20190403/fe3aa3b7e2fb1b417789d9e7f8b64e98.png','c6035a74237d5db8c5fecf9f27aed033','1985c9ac7133ddd98ee5eec6dd88f8dbad55f08b','png',NULL),(27,1,50958,1554280219,1,0,'69220e370672bda3779f913d88e7d17fad58ff59566f7be9d14c9b9c0f9c7b5c','us_img5.png','portal/20190403/3d9b828e7846dc7064b44bbf91c6e04e.png','69220e370672bda3779f913d88e7d17f','0f7095434edf7c13e73d6d22e657647743cedf6d','png',NULL),(28,1,67337,1554280267,1,0,'8c302a06ca91ac3d3eb3566bc3342a28e615344358bc9bc65507702e26636259','us_img6.png','portal/20190403/72986f3a5f5da9f75902b2e143f78d06.png','8c302a06ca91ac3d3eb3566bc3342a28','cd08db15e6b8d97af59b92698c7ec40c72732832','png',NULL),(29,1,57687,1554280300,1,0,'3bb4f826b79000c5a80f033c392667912e7e36626b48cdb0ca4c8bac420d58e7','us_img7.png','portal/20190403/1490c9f9a2f13f707f9afa7bed611568.png','3bb4f826b79000c5a80f033c39266791','fc2f5dfba98eb20ddde508cd85337860b6b046b7','png',NULL),(30,1,5075,1554339782,1,0,'35fd24756cdd43fec3c13e1d112b08f595233387ef0aee908b1dc573f50244cc','erweima.jpg','default/20190404/74a618b430cca2d75faf8834662d0388.jpg','35fd24756cdd43fec3c13e1d112b08f5','b668c1a075d832174594e7b6faf58e877ca829b3','jpg',NULL),(31,1,19089,1554343920,1,0,'23e3cf886844a7287f16c2583dbef583cbd1bdf4d07b6d47d6302c39352ca683','Product_img1.jpg','portal/20190404/f45113540f4db6172773d04313fa8211.jpg','23e3cf886844a7287f16c2583dbef583','a8bed3401d0379123c1f5ce0419f9452bbb85d06','jpg',NULL),(32,1,18262,1554343955,1,0,'638adf615a9d30eb2603ac3f68c01fdb83e640da178cb60cc5b9b5e3405c4d32','Product_img2.jpg','portal/20190404/270853b8c426920918230fc8119e31d3.jpg','638adf615a9d30eb2603ac3f68c01fdb','27ef6bf983e0dc20cb94d413516247a988a11bcf','jpg',NULL),(33,1,15195,1554343977,1,0,'13f8d257805c7dfe62baa69adc8eaaea8e2ea67d81fc89b00537bc70f5f13a8a','Product_img3.jpg','portal/20190404/7fbcf971c3f54764383bfab9bbafd0f8.jpg','13f8d257805c7dfe62baa69adc8eaaea','8a0eea835723c8f67842e4cca59d95abd65a70b2','jpg',NULL),(34,1,27747,1554344044,1,0,'1ae5b338b0f549f451da5b1b42f42cb7b4071896bd34372987009171f18107a8','Product_img4.jpg','portal/20190404/fa11756e8a9a0dd9aca9e6f5d8138393.jpg','1ae5b338b0f549f451da5b1b42f42cb7','10ff93b0d945040a1a813c378c79cb19b3ec2294','jpg',NULL),(35,1,156935,1554346990,1,0,'74cd0e1a32f4102f1fab48279359c0a69aefc60ae9ff3e240b858b0de3eb94c9','news_big.jpg','portal/20190404/54779c84413693d58545b5384d5f603f.jpg','74cd0e1a32f4102f1fab48279359c0a6','29cab59e53f0d2f26a4c3492fbb7596d784ff474','jpg',NULL),(36,1,37865,1554686224,1,0,'c22a1ff4d23f1654da9a9c4d4fa386f7132a63d93ccb485bfd90f56a551131f9','2870_P_1397697852957.jpg','portal/20190408/a3a641794e15db12e88fd645989ec674.jpg','c22a1ff4d23f1654da9a9c4d4fa386f7','a448e31ec1904ad3fdad8bf8d5dd89d8564a5124','jpg',NULL),(37,1,81699,1554697512,1,0,'e5ce394abf3089e26dbb300191f164dee944101271f94715af018c15434d6370','banner1_min.jpg','default/20190408/cf3f59bb9f842f244500d68d05276492.jpg','e5ce394abf3089e26dbb300191f164de','2eb02fc5075cc6e6be1c888d4e0a69cf832a1365','jpg',NULL),(38,1,29479,1554706861,1,0,'1933eed08b5f9421ba28a9e29345370b108d9446824cc5f34a9cb9bf7bcc5132','product1_min.jpg','portal/20190408/a4ff90d4c9b46fe16d1eda4689793329.jpg','1933eed08b5f9421ba28a9e29345370b','0f7e7336336669ac108059980ed1aef4d5fb3e5b','jpg',NULL),(39,1,7234,1555570380,1,0,'4a8d6948b4322c4ab73b8fa4cd97ce83515e19df10fd5c53ea8a131b609ffa36','banner1.jpg','portal/20190418/d5b323b9ce99ecd417d331df22e22e78.jpg','4a8d6948b4322c4ab73b8fa4cd97ce83','41481be9df7aa952fb4b33a4e45c0d3519f1b638','jpg',NULL),(40,1,8525,1555570486,1,0,'351071b1df5939ce6ece3913c4ddb6aed196eb19fdc44bbf313f6f92da2dec02','banner4.jpg','portal/20190418/6cc64e44772d78ea738a7bb2831dd59b.jpg','351071b1df5939ce6ece3913c4ddb6ae','8cf9658ca92e78cff9e9ff1f940edd2fad930012','jpg',NULL),(41,1,406333,1555570781,1,0,'bb768ce819873e83ab70e826c19489fb86a0c0ea5c2b857891de4d65ee85cf40','banner4.jpg','portal/20190418/ccc883f80090de2a57a63faff6d377b8.jpg','bb768ce819873e83ab70e826c19489fb','c334d065a1d3b4a140c01a5e32af3d7217d6cafd','jpg',NULL),(42,1,5745,1555570973,1,0,'2760eb3d297aea0ad3bab4e03f52f8e4cae56be5c3b13f3c5153a69fcdc3ad1a','banner4.jpg','portal/20190418/1ecb975d10a4a548dd8636130360dec5.jpg','2760eb3d297aea0ad3bab4e03f52f8e4','730ce052c8aa80144342a55f57a71aee29a501d7','jpg',NULL),(43,1,43494,1555571027,1,0,'768ad4848c6e1a752b1818e5243b9df70005a78b3fcd8c3d725982ec411a5c3e','banner4.jpg','portal/20190418/46a703e5eaf4916e798ee2a22c4406d0.jpg','768ad4848c6e1a752b1818e5243b9df7','b3c7c71674a185f16a1abb1b5f269d23cacba7eb','jpg',NULL),(44,1,8312,1555571116,1,0,'d27afb0f5a2f454063a9e9f3875b5bf7b3e264bebfb98cfd736ceb07c00bf7a3','home_img1.jpg','portal/20190418/b9ff67c8b292bb018c579fe3706c2b3e.jpg','d27afb0f5a2f454063a9e9f3875b5bf7','367919deefbdccca2aae4001c50c213904359e08','jpg',NULL),(45,1,53368,1555572028,1,0,'144535e7c96b6eeab999e7670e2e6f95d7e13d999fa9cf8afcd0c6402edb6de6','banner1.jpg','portal/20190418/a595cd3dfb4f1b8fa292942df6823a33.jpg','144535e7c96b6eeab999e7670e2e6f95','1364f3587090eef126834344f10898184377b172','jpg',NULL),(46,1,20126,1555572196,1,0,'6dd75083bd61b4986387973f5e69b16920ced0b49edfbd81a9bc2c15a8dcfd85','banner5_min.jpg','portal/20190418/37d90052c3c25741200edd0387827923.jpg','6dd75083bd61b4986387973f5e69b169','dd052b7c35fb1e51332b93ceff1a4c599a0a9bcb','jpg',NULL),(47,1,62829,1555572636,1,0,'e358826bd4c0d0a560b5f370a46a0ed36cccb6d25ce69fb9565c9e880d8da676','banner2.jpg','default/20190418/94e12cd5a45523320af64ce707199656.jpg','e358826bd4c0d0a560b5f370a46a0ed3','029491dfd3d014a983a5260cba41a26cf61311a3','jpg',NULL);

/*Table structure for table `cmf_auth_access` */

DROP TABLE IF EXISTS `cmf_auth_access`;

CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

/*Data for the table `cmf_auth_access` */

/*Table structure for table `cmf_auth_rule` */

DROP TABLE IF EXISTS `cmf_auth_rule`;

CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

/*Data for the table `cmf_auth_rule` */

insert  into `cmf_auth_rule`(`id`,`status`,`app`,`type`,`name`,`param`,`title`,`condition`) values (1,1,'admin','admin_url','admin/Hook/index','','钩子管理',''),(2,1,'admin','admin_url','admin/Hook/plugins','','钩子插件管理',''),(3,1,'admin','admin_url','admin/Hook/pluginListOrder','','钩子插件排序',''),(4,1,'admin','admin_url','admin/Hook/sync','','同步钩子',''),(5,1,'admin','admin_url','admin/Link/index','','友情链接',''),(6,1,'admin','admin_url','admin/Link/add','','添加友情链接',''),(7,1,'admin','admin_url','admin/Link/addPost','','添加友情链接提交保存',''),(8,1,'admin','admin_url','admin/Link/edit','','编辑友情链接',''),(9,1,'admin','admin_url','admin/Link/editPost','','编辑友情链接提交保存',''),(10,1,'admin','admin_url','admin/Link/delete','','删除友情链接',''),(11,1,'admin','admin_url','admin/Link/listOrder','','友情链接排序',''),(12,1,'admin','admin_url','admin/Link/toggle','','友情链接显示隐藏',''),(13,1,'admin','admin_url','admin/Mailer/index','','邮箱配置',''),(14,1,'admin','admin_url','admin/Mailer/indexPost','','邮箱配置提交保存',''),(15,1,'admin','admin_url','admin/Mailer/template','','邮件模板',''),(16,1,'admin','admin_url','admin/Mailer/templatePost','','邮件模板提交',''),(17,1,'admin','admin_url','admin/Mailer/test','','邮件发送测试',''),(18,1,'admin','admin_url','admin/Menu/index','','后台菜单',''),(19,1,'admin','admin_url','admin/Menu/lists','','所有菜单',''),(20,1,'admin','admin_url','admin/Menu/add','','后台菜单添加',''),(21,1,'admin','admin_url','admin/Menu/addPost','','后台菜单添加提交保存',''),(22,1,'admin','admin_url','admin/Menu/edit','','后台菜单编辑',''),(23,1,'admin','admin_url','admin/Menu/editPost','','后台菜单编辑提交保存',''),(24,1,'admin','admin_url','admin/Menu/delete','','后台菜单删除',''),(25,1,'admin','admin_url','admin/Menu/listOrder','','后台菜单排序',''),(26,1,'admin','admin_url','admin/Menu/getActions','','导入新后台菜单',''),(27,1,'admin','admin_url','admin/Nav/index','','导航管理',''),(28,1,'admin','admin_url','admin/Nav/add','','添加导航',''),(29,1,'admin','admin_url','admin/Nav/addPost','','添加导航提交保存',''),(30,1,'admin','admin_url','admin/Nav/edit','','编辑导航',''),(31,1,'admin','admin_url','admin/Nav/editPost','','编辑导航提交保存',''),(32,1,'admin','admin_url','admin/Nav/delete','','删除导航',''),(33,1,'admin','admin_url','admin/NavMenu/index','','导航菜单',''),(34,1,'admin','admin_url','admin/NavMenu/add','','添加导航菜单',''),(35,1,'admin','admin_url','admin/NavMenu/addPost','','添加导航菜单提交保存',''),(36,1,'admin','admin_url','admin/NavMenu/edit','','编辑导航菜单',''),(37,1,'admin','admin_url','admin/NavMenu/editPost','','编辑导航菜单提交保存',''),(38,1,'admin','admin_url','admin/NavMenu/delete','','删除导航菜单',''),(39,1,'admin','admin_url','admin/NavMenu/listOrder','','导航菜单排序',''),(40,1,'admin','admin_url','admin/Plugin/default','','插件中心',''),(41,1,'admin','admin_url','admin/Plugin/index','','插件列表',''),(42,1,'admin','admin_url','admin/Plugin/toggle','','插件启用禁用',''),(43,1,'admin','admin_url','admin/Plugin/setting','','插件设置',''),(44,1,'admin','admin_url','admin/Plugin/settingPost','','插件设置提交',''),(45,1,'admin','admin_url','admin/Plugin/install','','插件安装',''),(46,1,'admin','admin_url','admin/Plugin/update','','插件更新',''),(47,1,'admin','admin_url','admin/Plugin/uninstall','','卸载插件',''),(48,1,'admin','admin_url','admin/Rbac/index','','角色管理',''),(49,1,'admin','admin_url','admin/Rbac/roleAdd','','添加角色',''),(50,1,'admin','admin_url','admin/Rbac/roleAddPost','','添加角色提交',''),(51,1,'admin','admin_url','admin/Rbac/roleEdit','','编辑角色',''),(52,1,'admin','admin_url','admin/Rbac/roleEditPost','','编辑角色提交',''),(53,1,'admin','admin_url','admin/Rbac/roleDelete','','删除角色',''),(54,1,'admin','admin_url','admin/Rbac/authorize','','设置角色权限',''),(55,1,'admin','admin_url','admin/Rbac/authorizePost','','角色授权提交',''),(56,1,'admin','admin_url','admin/RecycleBin/index','','回收站',''),(57,1,'admin','admin_url','admin/RecycleBin/restore','','回收站还原',''),(58,1,'admin','admin_url','admin/RecycleBin/delete','','回收站彻底删除',''),(59,1,'admin','admin_url','admin/Route/index','','URL美化',''),(60,1,'admin','admin_url','admin/Route/add','','添加路由规则',''),(61,1,'admin','admin_url','admin/Route/addPost','','添加路由规则提交',''),(62,1,'admin','admin_url','admin/Route/edit','','路由规则编辑',''),(63,1,'admin','admin_url','admin/Route/editPost','','路由规则编辑提交',''),(64,1,'admin','admin_url','admin/Route/delete','','路由规则删除',''),(65,1,'admin','admin_url','admin/Route/ban','','路由规则禁用',''),(66,1,'admin','admin_url','admin/Route/open','','路由规则启用',''),(67,1,'admin','admin_url','admin/Route/listOrder','','路由规则排序',''),(68,1,'admin','admin_url','admin/Route/select','','选择URL',''),(69,1,'admin','admin_url','admin/Setting/default','','设置',''),(70,1,'admin','admin_url','admin/Setting/site','','网站信息',''),(71,1,'admin','admin_url','admin/Setting/sitePost','','网站信息设置提交',''),(72,1,'admin','admin_url','admin/Setting/password','','密码修改',''),(73,1,'admin','admin_url','admin/Setting/passwordPost','','密码修改提交',''),(74,1,'admin','admin_url','admin/Setting/upload','','上传设置',''),(75,1,'admin','admin_url','admin/Setting/uploadPost','','上传设置提交',''),(76,1,'admin','admin_url','admin/Setting/clearCache','','清除缓存',''),(77,1,'admin','admin_url','admin/Slide/index','','幻灯片管理',''),(78,1,'admin','admin_url','admin/Slide/add','','添加幻灯片',''),(79,1,'admin','admin_url','admin/Slide/addPost','','添加幻灯片提交',''),(80,1,'admin','admin_url','admin/Slide/edit','','编辑幻灯片',''),(81,1,'admin','admin_url','admin/Slide/editPost','','编辑幻灯片提交',''),(82,1,'admin','admin_url','admin/Slide/delete','','删除幻灯片',''),(83,1,'admin','admin_url','admin/SlideItem/index','','幻灯片页面列表',''),(84,1,'admin','admin_url','admin/SlideItem/add','','幻灯片页面添加',''),(85,1,'admin','admin_url','admin/SlideItem/addPost','','幻灯片页面添加提交',''),(86,1,'admin','admin_url','admin/SlideItem/edit','','幻灯片页面编辑',''),(87,1,'admin','admin_url','admin/SlideItem/editPost','','幻灯片页面编辑提交',''),(88,1,'admin','admin_url','admin/SlideItem/delete','','幻灯片页面删除',''),(89,1,'admin','admin_url','admin/SlideItem/ban','','幻灯片页面隐藏',''),(90,1,'admin','admin_url','admin/SlideItem/cancelBan','','幻灯片页面显示',''),(91,1,'admin','admin_url','admin/SlideItem/listOrder','','幻灯片页面排序',''),(92,1,'admin','admin_url','admin/Storage/index','','文件存储',''),(93,1,'admin','admin_url','admin/Storage/settingPost','','文件存储设置提交',''),(94,1,'admin','admin_url','admin/Theme/index','','模板管理',''),(95,1,'admin','admin_url','admin/Theme/install','','安装模板',''),(96,1,'admin','admin_url','admin/Theme/uninstall','','卸载模板',''),(97,1,'admin','admin_url','admin/Theme/installTheme','','模板安装',''),(98,1,'admin','admin_url','admin/Theme/update','','模板更新',''),(99,1,'admin','admin_url','admin/Theme/active','','启用模板',''),(100,1,'admin','admin_url','admin/Theme/files','','模板文件列表',''),(101,1,'admin','admin_url','admin/Theme/fileSetting','','模板文件设置',''),(102,1,'admin','admin_url','admin/Theme/fileArrayData','','模板文件数组数据列表',''),(103,1,'admin','admin_url','admin/Theme/fileArrayDataEdit','','模板文件数组数据添加编辑',''),(104,1,'admin','admin_url','admin/Theme/fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存',''),(105,1,'admin','admin_url','admin/Theme/fileArrayDataDelete','','模板文件数组数据删除',''),(106,1,'admin','admin_url','admin/Theme/settingPost','','模板文件编辑提交保存',''),(107,1,'admin','admin_url','admin/Theme/dataSource','','模板文件设置数据源',''),(108,1,'admin','admin_url','admin/Theme/design','','模板设计',''),(109,1,'admin','admin_url','admin/User/default','','管理组',''),(110,1,'admin','admin_url','admin/User/index','','管理员',''),(111,1,'admin','admin_url','admin/User/add','','管理员添加',''),(112,1,'admin','admin_url','admin/User/addPost','','管理员添加提交',''),(113,1,'admin','admin_url','admin/User/edit','','管理员编辑',''),(114,1,'admin','admin_url','admin/User/editPost','','管理员编辑提交',''),(115,1,'admin','admin_url','admin/User/userInfo','','个人信息',''),(116,1,'admin','admin_url','admin/User/userInfoPost','','管理员个人信息修改提交',''),(117,1,'admin','admin_url','admin/User/delete','','管理员删除',''),(118,1,'admin','admin_url','admin/User/ban','','停用管理员',''),(119,1,'admin','admin_url','admin/User/cancelBan','','启用管理员',''),(120,1,'user','admin_url','user/AdminAsset/index','','资源管理',''),(121,1,'user','admin_url','user/AdminAsset/delete','','删除文件',''),(122,1,'user','admin_url','user/AdminIndex/default','','用户管理',''),(123,1,'user','admin_url','user/AdminIndex/default1','','用户组',''),(124,1,'user','admin_url','user/AdminIndex/index','','本站用户',''),(125,1,'user','admin_url','user/AdminIndex/ban','','本站用户拉黑',''),(126,1,'user','admin_url','user/AdminIndex/cancelBan','','本站用户启用',''),(127,1,'user','admin_url','user/AdminOauth/index','','第三方用户',''),(128,1,'user','admin_url','user/AdminOauth/delete','','删除第三方用户绑定',''),(129,1,'user','admin_url','user/AdminUserAction/index','','用户操作管理',''),(130,1,'user','admin_url','user/AdminUserAction/edit','','编辑用户操作',''),(131,1,'user','admin_url','user/AdminUserAction/editPost','','编辑用户操作提交',''),(132,1,'user','admin_url','user/AdminUserAction/sync','','同步用户操作',''),(162,1,'portal','admin_url','portal/AdminArticle/index','','文章管理',''),(163,1,'portal','admin_url','portal/AdminArticle/add','','添加文章',''),(164,1,'portal','admin_url','portal/AdminArticle/addPost','','添加文章提交',''),(165,1,'portal','admin_url','portal/AdminArticle/edit','','编辑文章',''),(166,1,'portal','admin_url','portal/AdminArticle/editPost','','编辑文章提交',''),(167,1,'portal','admin_url','portal/AdminArticle/delete','','文章删除',''),(168,1,'portal','admin_url','portal/AdminArticle/publish','','文章发布',''),(169,1,'portal','admin_url','portal/AdminArticle/top','','文章置顶',''),(170,1,'portal','admin_url','portal/AdminArticle/recommend','','文章推荐',''),(171,1,'portal','admin_url','portal/AdminArticle/listOrder','','文章排序',''),(172,1,'portal','admin_url','portal/AdminCategory/index','','分类管理',''),(173,1,'portal','admin_url','portal/AdminCategory/add','','添加文章分类',''),(174,1,'portal','admin_url','portal/AdminCategory/addPost','','添加文章分类提交',''),(175,1,'portal','admin_url','portal/AdminCategory/edit','','编辑文章分类',''),(176,1,'portal','admin_url','portal/AdminCategory/editPost','','编辑文章分类提交',''),(177,1,'portal','admin_url','portal/AdminCategory/select','','文章分类选择对话框',''),(178,1,'portal','admin_url','portal/AdminCategory/listOrder','','文章分类排序',''),(179,1,'portal','admin_url','portal/AdminCategory/toggle','','文章分类显示隐藏',''),(180,1,'portal','admin_url','portal/AdminCategory/delete','','删除文章分类',''),(181,1,'portal','admin_url','portal/AdminIndex/default','','门户管理',''),(182,1,'portal','admin_url','portal/AdminPage/index','','页面管理',''),(183,1,'portal','admin_url','portal/AdminPage/add','','添加页面',''),(184,1,'portal','admin_url','portal/AdminPage/addPost','','添加页面提交',''),(185,1,'portal','admin_url','portal/AdminPage/edit','','编辑页面',''),(186,1,'portal','admin_url','portal/AdminPage/editPost','','编辑页面提交',''),(187,1,'portal','admin_url','portal/AdminPage/delete','','删除页面',''),(188,1,'portal','admin_url','portal/AdminTag/index','','文章标签',''),(189,1,'portal','admin_url','portal/AdminTag/add','','添加文章标签',''),(190,1,'portal','admin_url','portal/AdminTag/addPost','','添加文章标签提交',''),(191,1,'portal','admin_url','portal/AdminTag/upStatus','','更新标签状态',''),(192,1,'portal','admin_url','portal/AdminTag/delete','','删除文章标签',''),(193,1,'plugin/AdminJournal','plugin_url','plugin/AdminJournal/AdminIndex/index','','操作日志',''),(194,1,'plugin/Wxapp','plugin_url','plugin/Wxapp/AdminIndex/index','','小程序管理',''),(195,1,'plugin/Wxapp','plugin_url','plugin/Wxapp/AdminWxapp/add','','添加小程序',''),(196,1,'plugin/Wxapp','plugin_url','plugin/Wxapp/AdminWxapp/addPost','','添加小程序提交保存',''),(197,1,'plugin/Wxapp','plugin_url','plugin/Wxapp/AdminWxapp/edit','','编辑小程序',''),(198,1,'plugin/Wxapp','plugin_url','plugin/Wxapp/AdminWxapp/editPost','','编辑小程序提交保存',''),(199,1,'plugin/Wxapp','plugin_url','plugin/Wxapp/AdminWxapp/delete','','删除小程序','');

/*Table structure for table `cmf_comment` */

DROP TABLE IF EXISTS `cmf_comment`;

CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

/*Data for the table `cmf_comment` */

/*Table structure for table `cmf_hook` */

DROP TABLE IF EXISTS `cmf_hook`;

CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

/*Data for the table `cmf_hook` */

insert  into `cmf_hook`(`id`,`type`,`once`,`name`,`hook`,`app`,`description`) values (2,1,0,'应用开始','app_begin','cmf','应用开始'),(3,1,0,'模块初始化','module_init','cmf','模块初始化'),(4,1,0,'控制器开始','action_begin','cmf','控制器开始'),(5,1,0,'视图输出过滤','view_filter','cmf','视图输出过滤'),(6,1,0,'应用结束','app_end','cmf','应用结束'),(7,1,0,'日志write方法','log_write','cmf','日志write方法'),(8,1,0,'输出结束','response_end','cmf','输出结束'),(9,1,0,'后台控制器初始化','admin_init','cmf','后台控制器初始化'),(10,1,0,'前台控制器初始化','home_init','cmf','前台控制器初始化'),(11,1,1,'发送手机验证码','send_mobile_verification_code','cmf','发送手机验证码'),(12,3,0,'模板 body标签开始','body_start','','模板 body标签开始'),(13,3,0,'模板 head标签结束前','before_head_end','','模板 head标签结束前'),(14,3,0,'模板底部开始','footer_start','','模板底部开始'),(15,3,0,'模板底部开始之前','before_footer','','模板底部开始之前'),(16,3,0,'模板底部结束之前','before_footer_end','','模板底部结束之前'),(17,3,0,'模板 body 标签结束之前','before_body_end','','模板 body 标签结束之前'),(18,3,0,'模板左边栏开始','left_sidebar_start','','模板左边栏开始'),(19,3,0,'模板左边栏结束之前','before_left_sidebar_end','','模板左边栏结束之前'),(20,3,0,'模板右边栏开始','right_sidebar_start','','模板右边栏开始'),(21,3,0,'模板右边栏结束之前','before_right_sidebar_end','','模板右边栏结束之前'),(22,3,1,'评论区','comment','','评论区'),(23,3,1,'留言区','guestbook','','留言区'),(24,2,0,'后台首页仪表盘','admin_dashboard','admin','后台首页仪表盘'),(25,4,0,'后台模板 head标签结束前','admin_before_head_end','','后台模板 head标签结束前'),(26,4,0,'后台模板 body 标签结束之前','admin_before_body_end','','后台模板 body 标签结束之前'),(27,2,0,'后台登录页面','admin_login','admin','后台登录页面'),(28,1,1,'前台模板切换','switch_theme','cmf','前台模板切换'),(29,3,0,'主要内容之后','after_content','','主要内容之后'),(32,2,1,'获取上传界面','fetch_upload_view','user','获取上传界面'),(33,3,0,'主要内容之前','before_content','cmf','主要内容之前'),(34,1,0,'日志写入完成','log_write_done','cmf','日志写入完成'),(35,1,1,'后台模板切换','switch_admin_theme','cmf','后台模板切换'),(36,1,1,'验证码图片','captcha_image','cmf','验证码图片'),(37,2,1,'后台模板设计界面','admin_theme_design_view','admin','后台模板设计界面'),(38,2,1,'后台设置网站信息界面','admin_setting_site_view','admin','后台设置网站信息界面'),(39,2,1,'后台清除缓存界面','admin_setting_clear_cache_view','admin','后台清除缓存界面'),(40,2,1,'后台导航管理界面','admin_nav_index_view','admin','后台导航管理界面'),(41,2,1,'后台友情链接管理界面','admin_link_index_view','admin','后台友情链接管理界面'),(42,2,1,'后台幻灯片管理界面','admin_slide_index_view','admin','后台幻灯片管理界面'),(43,2,1,'后台管理员列表界面','admin_user_index_view','admin','后台管理员列表界面'),(44,2,1,'后台角色管理界面','admin_rbac_index_view','admin','后台角色管理界面'),(49,2,1,'用户管理本站用户列表界面','user_admin_index_view','user','用户管理本站用户列表界面'),(50,2,1,'资源管理列表界面','user_admin_asset_index_view','user','资源管理列表界面'),(51,2,1,'用户管理第三方用户列表界面','user_admin_oauth_index_view','user','用户管理第三方用户列表界面'),(52,2,1,'后台首页界面','admin_index_index_view','admin','后台首页界面'),(53,2,1,'后台回收站界面','admin_recycle_bin_index_view','admin','后台回收站界面'),(54,2,1,'后台菜单管理界面','admin_menu_index_view','admin','后台菜单管理界面'),(55,2,1,'后台自定义登录是否开启钩子','admin_custom_login_open','admin','后台自定义登录是否开启钩子'),(64,2,1,'后台幻灯片页面列表界面','admin_slide_item_index_view','admin','后台幻灯片页面列表界面'),(65,2,1,'后台幻灯片页面添加界面','admin_slide_item_add_view','admin','后台幻灯片页面添加界面'),(66,2,1,'后台幻灯片页面编辑界面','admin_slide_item_edit_view','admin','后台幻灯片页面编辑界面'),(67,2,1,'后台管理员添加界面','admin_user_add_view','admin','后台管理员添加界面'),(68,2,1,'后台管理员编辑界面','admin_user_edit_view','admin','后台管理员编辑界面'),(69,2,1,'后台角色添加界面','admin_rbac_role_add_view','admin','后台角色添加界面'),(70,2,1,'后台角色编辑界面','admin_rbac_role_edit_view','admin','后台角色编辑界面'),(71,2,1,'后台角色授权界面','admin_rbac_authorize_view','admin','后台角色授权界面'),(72,2,0,'文章显示之前','portal_before_assign_article','portal','文章显示之前'),(73,2,0,'后台文章保存之后','portal_admin_after_save_article','portal','后台文章保存之后'),(74,2,1,'门户后台文章管理列表界面','portal_admin_article_index_view','portal','门户后台文章管理列表界面'),(75,2,1,'门户后台文章添加界面','portal_admin_article_add_view','portal','门户后台文章添加界面'),(76,2,1,'门户后台文章编辑界面','portal_admin_article_edit_view','portal','门户后台文章编辑界面'),(77,2,1,'门户后台文章分类管理列表界面','portal_admin_category_index_view','portal','门户后台文章分类管理列表界面'),(78,2,1,'门户后台文章分类添加界面','portal_admin_category_add_view','portal','门户后台文章分类添加界面'),(79,2,1,'门户后台文章分类编辑界面','portal_admin_category_edit_view','portal','门户后台文章分类编辑界面'),(80,2,1,'门户后台页面管理列表界面','portal_admin_page_index_view','portal','门户后台页面管理列表界面'),(81,2,1,'门户后台页面添加界面','portal_admin_page_add_view','portal','门户后台页面添加界面'),(82,2,1,'门户后台页面编辑界面','portal_admin_page_edit_view','portal','门户后台页面编辑界面'),(83,2,1,'门户后台文章标签管理列表界面','portal_admin_tag_index_view','portal','门户后台文章标签管理列表界面'),(84,4,0,'门户后台文章添加编辑界面右侧栏','portal_admin_article_edit_view_right_sidebar','portal','门户后台文章添加编辑界面右侧栏'),(85,4,0,'门户后台文章添加编辑界面主要内容','portal_admin_article_edit_view_main','portal','门户后台文章添加编辑界面主要内容'),(86,1,0,'应用调度','app_dispatch','cmf','应用调度');

/*Table structure for table `cmf_hook_plugin` */

DROP TABLE IF EXISTS `cmf_hook_plugin`;

CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

/*Data for the table `cmf_hook_plugin` */

insert  into `cmf_hook_plugin`(`id`,`list_order`,`status`,`hook`,`plugin`) values (1,10000,1,'admin_init','AdminJournal'),(2,10000,1,'before_body_end','FloatMenuLite'),(3,10000,1,'fetch_upload_view','Qiniu'),(5,10000,1,'admin_dashboard','SystemInfo'),(6,10000,1,'portal_admin_after_save_article','Image');

/*Table structure for table `cmf_link` */

DROP TABLE IF EXISTS `cmf_link`;

CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

/*Data for the table `cmf_link` */

insert  into `cmf_link`(`id`,`status`,`rating`,`list_order`,`description`,`url`,`name`,`image`,`target`,`rel`) values (1,1,1,8,'thinkcmf官网','http://www.thinkcmf.com','ThinkCMF','','_blank',''),(2,1,0,10000,'','http://www.baidu.com','百度','','_blank',''),(3,1,0,10000,'','http://www.taobao.com','淘宝','','_blank',''),(4,1,0,10000,'','http://www.thinkphp.cn/','ThinkPHP','','_blank','');

/*Table structure for table `cmf_nav` */

DROP TABLE IF EXISTS `cmf_nav`;

CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

/*Data for the table `cmf_nav` */

insert  into `cmf_nav`(`id`,`is_main`,`name`,`remark`) values (1,1,'主导航','主导航'),(2,0,'底部导航','');

/*Table structure for table `cmf_nav_menu` */

DROP TABLE IF EXISTS `cmf_nav_menu`;

CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

/*Data for the table `cmf_nav_menu` */

insert  into `cmf_nav_menu`(`id`,`nav_id`,`parent_id`,`status`,`list_order`,`name`,`target`,`href`,`icon`,`path`) values (1,1,0,1,0,'首页','','../Portal/Index','','0-1'),(2,1,0,1,10000,'产品','','../Portal/Product','',''),(3,1,0,1,10000,'动态','','../Portal/News','',''),(4,1,0,1,10000,'案例','','../Portal/Case','',''),(5,1,0,1,10000,'关于','','../Portal/About','','');

/*Table structure for table `cmf_option` */

DROP TABLE IF EXISTS `cmf_option`;

CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

/*Data for the table `cmf_option` */

insert  into `cmf_option`(`id`,`autoload`,`option_name`,`option_value`) values (1,1,'site_info','{\"site_name\":\"\\u91d1\\u8054\\u667a\\u80fd\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_icp\":\"2019-2039\",\"site_gwa\":\"2019-2029\",\"site_admin_email\":\"66666666@163.com\",\"site_analytics\":\"\"}'),(2,1,'cmf_settings','{\"open_registration\":\"0\",\"banned_usernames\":\"\"}'),(3,1,'cdn_settings','{\"cdn_static_root\":\"\"}'),(4,1,'admin_settings','{\"admin_password\":\"\",\"admin_theme\":\"admin_simpleboot3\",\"admin_style\":\"simpleadmin\"}'),(5,1,'storage','{\"storages\":{\"Qiniu\":{\"name\":\"\\u4e03\\u725b\\u4e91\\u5b58\\u50a8\",\"driver\":\"\\\\plugins\\\\qiniu\\\\lib\\\\Qiniu\"}}}'),(6,1,'upload_setting','{\"max_files\":\"20\",\"chunk_size\":\"512\",\"file_types\":{\"image\":{\"upload_max_filesize\":\"1024\",\"extensions\":\"jpg,jpeg,png,gif,bmp4\"},\"video\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv\"},\"audio\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar\"}}}');

/*Table structure for table `cmf_plugin` */

DROP TABLE IF EXISTS `cmf_plugin`;

CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

/*Data for the table `cmf_plugin` */

insert  into `cmf_plugin`(`id`,`type`,`has_admin`,`status`,`create_time`,`name`,`title`,`demo_url`,`hooks`,`author`,`author_url`,`version`,`description`,`config`) values (1,1,1,1,0,'AdminJournal','操作日志','https://www.wzxaini9.cn/','','Powerless','https://www.wzxaini9.cn/','1.2.0','后台操作日志','[]'),(2,1,0,1,0,'FloatMenuLite','简约浮动菜单（自适应版）','','','J&C','','1.0','真正精简浮动菜单，自定义颜色，PC、移动端自动识别切换','{\"float_menu_color\":\"#2780E3\",\"float_menu_switch\":\"1\",\"float_menu_QQ\":\"11111111\",\"float_menu_TEL\":\"8888888\",\"float_menu_shop\":\"http:\\/\\/www.xxx.com\",\"float_menu_QR\":\"default\\/20190404\\/74a618b430cca2d75faf8834662d0388.jpg\",\"float_menu_pc_bottom\":\"50\",\"float_menu_mobile_bottom\":\"10\"}'),(3,1,0,1,0,'Qiniu','七牛云存储','','','ThinkCMF','','1.0.1','ThinkCMF七牛专享优惠码:507670e8','{\"accessKey\":\"\",\"secretKey\":\"\",\"protocol\":\"http\",\"domain\":\"\",\"bucket\":\"\",\"zone\":\"http\",\"style_separator\":\"!\",\"styles_watermark\":\"watermark\",\"styles_avatar\":\"avatar\",\"styles_thumbnail120x120\":\"thumbnail120x120\",\"styles_thumbnail300x300\":\"thumbnail300x300\",\"styles_thumbnail640x640\":\"thumbnail640x640\",\"styles_thumbnail1080x1080\":\"thumbnail1080x1080\"}'),(4,1,1,1,0,'Wxapp','微信小程序','http://demo.thinkcmf.com','','ThinkCMF','http://www.thinkcmf.com','1.0','微信小程序管理工具','[]'),(6,1,0,1,0,'SystemInfo','系统信息','','','ThinkCMF','','1.0','系统信息','[]'),(8,1,1,1,0,'RexseaDictionary','自动生成数据词典插件','','','rexsea','','1.0','自动生成数据词典插件','[]'),(9,1,1,1,0,'Image','缩略图插件','https://qq.ytecn.com','','Tangchao','https://qq.ytecn.com','1.1','缩略图插件','[]');

/*Table structure for table `cmf_portal_category` */

DROP TABLE IF EXISTS `cmf_portal_category`;

CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

/*Data for the table `cmf_portal_category` */

insert  into `cmf_portal_category`(`id`,`parent_id`,`post_count`,`status`,`delete_time`,`list_order`,`name`,`description`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`more`) values (2,0,0,1,0,10000,'为客户打造完美的专业服务','','0-2','','','','','','{\"thumbnail\":\"\"}'),(3,0,0,1,0,10000,'新闻动态','','0-3','','','','','','{\"thumbnail\":\"\"}'),(4,3,0,1,0,10000,'行业动态','','0-3-4','','','','','','{\"thumbnail\":\"\"}'),(5,3,0,1,0,10000,'公司动态','','0-3-5','','','','','','{\"thumbnail\":\"\"}'),(6,0,0,1,0,10000,'案例','','0-6','','','','','','{\"thumbnail\":\"\"}'),(7,0,0,1,0,10000,'关于','','0-7','','','','','','{\"thumbnail\":\"\"}'),(8,7,0,1,0,10000,'公司简介','','0-7-8','','','','','','{\"thumbnail\":\"\"}'),(9,7,0,1,0,10000,'发展历程','','0-7-9','','','','','','{\"thumbnail\":\"\"}'),(10,0,0,1,0,10000,'产品','专为消防安全而研制的核心产品','0-10','','','','','','{\"thumbnail\":\"\"}'),(11,10,0,1,0,10000,'烟感器','从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。','0-10-11','','','','','','{\"thumbnail\":\"portal\\/20190402\\/a21f9276801af4f6c9a1ee705af7ebb7.png\"}'),(12,10,0,1,0,10000,'水位感应器','从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。','0-10-12','','','','','','{\"thumbnail\":\"portal\\/20190402\\/dc0961fdd80a06e99b5eb02276ff9d48.png\"}'),(13,10,0,1,0,10000,'智能烟感器','从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。','0-10-13','','','','','','{\"thumbnail\":\"portal\\/20190402\\/647a9e5a95e61d9bd7185bf873b8ca6b.png\"}'),(14,10,0,1,0,10000,'温度感应器','从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。','0-10-14','','','','','','{\"thumbnail\":\"portal\\/20190402\\/c81d344fce432d6a39a05c4d110eda21.png\"}');

/*Table structure for table `cmf_portal_category_post` */

DROP TABLE IF EXISTS `cmf_portal_category_post`;

CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

/*Data for the table `cmf_portal_category_post` */

insert  into `cmf_portal_category_post`(`id`,`post_id`,`category_id`,`list_order`,`status`) values (5,5,2,10000,1),(6,6,2,10000,1),(7,7,2,10000,1),(8,8,2,10000,1),(9,9,2,10000,1),(10,10,4,10000,1),(11,11,4,10000,1),(12,12,5,10000,1),(13,13,5,10000,1),(14,14,6,10000,1),(15,15,6,10000,1),(16,16,6,10000,1),(17,17,6,10000,1),(18,18,6,10000,1),(19,19,6,10000,1),(20,20,8,10000,1),(21,21,8,10000,1),(22,22,8,10000,1),(23,23,9,10000,1),(24,24,9,10000,1),(25,25,9,10000,1),(26,26,9,10000,1),(27,27,11,10000,1),(28,28,12,10000,1),(29,29,13,10000,1),(30,30,14,10000,1),(31,31,11,10000,1),(32,32,2,10000,1);

/*Table structure for table `cmf_portal_post` */

DROP TABLE IF EXISTS `cmf_portal_post`;

CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

/*Data for the table `cmf_portal_post` */

insert  into `cmf_portal_post`(`id`,`parent_id`,`post_type`,`post_format`,`user_id`,`post_status`,`comment_status`,`is_top`,`recommended`,`post_hits`,`post_favorites`,`post_like`,`comment_count`,`create_time`,`update_time`,`published_time`,`delete_time`,`post_title`,`post_keywords`,`post_excerpt`,`post_source`,`thumbnail`,`post_content`,`post_content_filtered`,`more`) values (5,0,1,1,1,1,1,1,0,0,0,0,0,1554256051,1554367486,1554255900,0,'1 对 1 前端指导','','更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。','','portal/20190403/3584f06b49f5c01ef344a016446344ab.jpg','',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/3584f06b49f5c01ef344a016446344ab.jpg\",\"template\":\"\"}'),(6,0,1,1,1,1,1,0,0,0,0,0,0,1554256117,1554256439,1554256020,0,'1 对 1 前端指导','','更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。','','portal/20190403/a004d67dd5b07ff368e23029528e1ec4.jpg','',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/a004d67dd5b07ff368e23029528e1ec4.jpg\",\"template\":\"\"}'),(7,0,1,1,1,1,1,0,0,0,0,0,0,1554256223,1554256417,1554256140,0,'一对一的后端指导','','更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。','','portal/20190403/c9725b00536d0c25d0f26316dbb01740.jpg','',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/c9725b00536d0c25d0f26316dbb01740.jpg\",\"template\":\"\"}'),(8,0,1,1,1,1,1,0,0,0,0,0,0,1554256309,1554256326,1554256200,0,'二对二的前后端指导','','更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。','','portal/20190403/9fe39853a8d7aeb36f9ad8bce0198505.jpg','',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/9fe39853a8d7aeb36f9ad8bce0198505.jpg\",\"template\":\"\"}'),(9,0,1,1,1,1,1,0,0,0,0,0,0,1554256358,1554256364,1554256320,0,'三对三的知道','','更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。','','portal/20190403/a004d67dd5b07ff368e23029528e1ec4.jpg','',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/a004d67dd5b07ff368e23029528e1ec4.jpg\",\"template\":\"\"}'),(10,0,1,1,1,1,1,0,0,37,0,0,0,1554264263,1554367383,1554264120,0,'一直在你身边对你好，你却没有发现。','','找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。','','portal/20190403/17fbac77ad1a6c38ebfa10f67177a6da.jpg','&lt;p&gt;  找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。&lt;/p&gt;',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/17fbac77ad1a6c38ebfa10f67177a6da.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190404\\/54779c84413693d58545b5384d5f603f.jpg\",\"name\":\"news_big.jpg\"}]}'),(11,0,1,1,1,1,1,0,0,1,0,0,0,1554264311,1554367415,1554264240,0,'写经验交流材料的技巧全在这了！','','看不到您的原稿，这样对空发议论，估计对您的指导性是不大的。建议您将原稿贴出来，好让老师们针对指导。这里简单给出意见','','portal/20190403/17fbac77ad1a6c38ebfa10f67177a6da.jpg','&lt;p&gt;  找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。&lt;/p&gt;',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/17fbac77ad1a6c38ebfa10f67177a6da.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190404\\/54779c84413693d58545b5384d5f603f.jpg\",\"name\":\"news_big.jpg\"}]}'),(12,0,1,1,1,1,1,0,0,11,0,0,0,1554264351,1554370072,1554264300,0,'经验分享：我是如何做好每日计划的','','在日常的工作中，不知道大家有没有遇到以下这些问题：面对这样的问题，我养成了一个习惯就是每天写工作计划。想在此与大家分享，希望对你们有所帮助，同时欢迎指正及共同探讨。','','portal/20190403/17fbac77ad1a6c38ebfa10f67177a6da.jpg','&lt;p&gt;  找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀。&lt;/p&gt;',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/17fbac77ad1a6c38ebfa10f67177a6da.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190404\\/54779c84413693d58545b5384d5f603f.jpg\",\"name\":\"news_big.jpg\"}]}'),(13,0,1,1,1,1,1,0,0,1,0,0,0,1554264384,1554347001,1554264300,0,'养女儿，一定要让她漂亮！','','闹市街头，一位爸爸领着一对双胞胎女儿吸引住了我的目光。两个女儿五六岁，长得像天使一般动人。让人遗憾的是，家长给他们穿的衣服---大妈们买菜或做饭时穿的长袍式的家居服，看上去十分滑稽可笑。','','portal/20190403/17fbac77ad1a6c38ebfa10f67177a6da.jpg','\n&lt;p&gt;  闹市街头，一位爸爸领着一对双胞胎女儿吸引住了我的目光。两个女儿五六岁，长得像天使一般动人。让人遗憾的是，家长给他们穿的衣服---大妈们买菜或做饭时穿的长袍式的家居服，看上去十分滑稽可笑。&lt;/p&gt;\n&lt;p&gt;闹市街头，一位爸爸领着一对双胞胎女儿吸引住了我的目光。两个女儿五六岁，长得像天使一般动人。让人遗憾的是，家长给他们穿的衣服---大妈们买菜或做饭时穿的长袍式的家居服，看上去十分滑稽可笑。&lt;/p&gt;\n&lt;p&gt;闹市街头，一位爸爸领着一对双胞胎女儿吸引住了我的目光。两个女儿五六岁，长得像天使一般动人。让人遗憾的是，家长给他们穿的衣服---大妈们买菜或做饭时穿的长袍式的家居服，看上去十分滑稽可笑。&lt;/p&gt;\n&lt;p&gt;闹市街头，一位爸爸领着一对双胞胎女儿吸引住了我的目光。两个女儿五六岁，长得像天使一般动人。让人遗憾的是，家长给他们穿的衣服---大妈们买菜或做饭时穿的长袍式的家居服，看上去十分滑稽可笑。&lt;/p&gt;\n',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/17fbac77ad1a6c38ebfa10f67177a6da.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190404\\/54779c84413693d58545b5384d5f603f.jpg\",\"name\":\"news_big.jpg\"}]}'),(14,0,1,1,1,1,1,0,0,0,0,0,0,1554277190,1554277196,1554277080,0,'名牌工厂店','','一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。','','portal/20190403/43714e969452d0ee932ece75164851a7.jpg','',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/43714e969452d0ee932ece75164851a7.jpg\",\"template\":\"\"}'),(15,0,1,1,1,1,1,0,0,0,0,0,0,1554277232,1554277237,1554277200,0,'名牌工厂店','','一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。','','portal/20190403/6ce0a43d80c617c8ef031395a6f99faf.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/6ce0a43d80c617c8ef031395a6f99faf.jpg\",\"template\":\"\"}'),(16,0,1,1,1,1,1,0,0,0,0,0,0,1554277270,1554277274,1554277200,0,'名牌工厂店','','一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。','','portal/20190403/9871b051460eafa833ad6e7178cc8858.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/9871b051460eafa833ad6e7178cc8858.jpg\",\"template\":\"\"}'),(17,0,1,1,1,1,1,0,0,0,0,0,0,1554277301,1554277308,1554277260,0,'名牌工厂店','','一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。','','portal/20190403/ddff011864397274218030c2ad89cef6.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/ddff011864397274218030c2ad89cef6.jpg\",\"template\":\"\"}'),(18,0,1,1,1,1,1,0,0,0,0,0,0,1554277338,1554277342,1554277260,0,'名牌工厂店','','一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。','','portal/20190403/3ab00cd8d8a2d970805fc4067980e5da.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/3ab00cd8d8a2d970805fc4067980e5da.jpg\",\"template\":\"\"}'),(19,0,1,1,1,1,1,0,0,0,0,0,0,1554277363,1554277369,1554277320,0,'名牌工厂店','','一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。','','portal/20190403/98e77c133fbe066ff656b3b87e571747.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/98e77c133fbe066ff656b3b87e571747.jpg\",\"template\":\"\"}'),(20,0,1,1,1,1,1,0,0,0,0,0,0,1554279995,1554280000,1554279900,0,'公司简介','','身处在前端社区的繁荣之下，我们都在有意或无意地追逐。而 layui 偏偏回望当初，奔赴在返璞归真的漫漫征途，自信并勇敢着，追寻于原生态的书写指令，试图以最简单的方式诠释高效。','','portal/20190403/b1f1ad51fa7480d32d8a6f3476ea0b27.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/b1f1ad51fa7480d32d8a6f3476ea0b27.jpg\",\"template\":\"\"}'),(21,0,1,1,1,1,1,0,0,0,0,0,0,1554280034,1554344009,1554279960,0,'公司简介','','如果眼下还是一团零星之火，那运筹帷幄之后，迎面东风，就是一场烈焰燎原吧，那必定会是一番尽情的燃烧。待，秋风萧瑟时，散作满天星辰，你看那四季轮回，正是Layui不灭的执念。','','portal/20190403/4005c2cdbb37df2a565297b87e91b2bf.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/4005c2cdbb37df2a565297b87e91b2bf.jpg\",\"template\":\"\"}'),(22,0,1,1,1,1,1,0,0,0,0,0,0,1554280069,1554280073,1554280020,0,'公司简介','','拥有双面的不仅是人生，还有Layui。一面极简，一面丰盈。极简是视觉所见的外在，是开发所念的简易。丰盈是倾情雕琢的内在，是信手拈来的承诺。一切本应如此，简而全，双重体验。','','portal/20190403/aa6059e49e01882b47890544afdaba27.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/aa6059e49e01882b47890544afdaba27.jpg\",\"template\":\"\"}'),(23,0,1,1,1,1,1,0,0,0,0,0,0,1554280185,1554280189,1554280020,0,'2017 年 6 月','','我们成立了，来到了杭州西湖这个美丽的地方。','','portal/20190403/fe3aa3b7e2fb1b417789d9e7f8b64e98.png',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/fe3aa3b7e2fb1b417789d9e7f8b64e98.png\",\"template\":\"\"}'),(24,0,1,1,1,1,1,0,0,0,0,0,0,1554280225,1554280232,1554280140,0,'2017 年 6 月','','我们成立了，来到了杭州西湖这个美丽的地方。','','portal/20190403/3d9b828e7846dc7064b44bbf91c6e04e.png',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/3d9b828e7846dc7064b44bbf91c6e04e.png\",\"template\":\"\"}'),(25,0,1,1,1,1,1,0,0,0,0,0,0,1554280270,1554280275,1554280200,0,'2017 年 6 月','','我们成立了，来到了杭州西湖这个美丽的地方。','','portal/20190403/72986f3a5f5da9f75902b2e143f78d06.png',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/72986f3a5f5da9f75902b2e143f78d06.png\",\"template\":\"\"}'),(26,0,1,1,1,1,1,0,0,0,0,0,0,1554280305,1554280310,1554280260,0,'2017 年 6 月','','我们成立了，来到了杭州西湖这个美丽的地方。','','portal/20190403/1490c9f9a2f13f707f9afa7bed611568.png',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190403\\/1490c9f9a2f13f707f9afa7bed611568.png\",\"template\":\"\"}'),(27,0,1,1,1,1,1,0,0,0,0,0,0,1554686238,1554686260,1554686100,0,'烟感器1','','烟感器文章1','本站','','&lt;p&gt;烟感器参数内容.........................&lt;/p&gt;',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190408\\/a3a641794e15db12e88fd645989ec674.jpg\",\"name\":\"2870_P_1397697852957.jpg\"}]}'),(28,0,1,1,1,1,1,0,0,0,0,0,0,1554686669,1554686674,1554686520,0,'水位感应器1','','水位感应器1','本站','','&lt;p&gt;水位感应器1参数内容&lt;/p&gt;',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190408\\/a3a641794e15db12e88fd645989ec674.jpg\",\"name\":\"2870_P_1397697852957.jpg\"}]}'),(29,0,1,1,1,1,1,0,0,0,0,0,0,1554686779,1554686798,1554686700,0,'智能烟感器1','','智能烟感器1','本站','','&lt;p&gt;智能烟感器1参数内容.............................&lt;/p&gt;',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190408\\/a3a641794e15db12e88fd645989ec674.jpg\",\"name\":\"2870_P_1397697852957.jpg\"}]}'),(30,0,1,1,1,1,1,0,0,0,0,0,0,1554686881,1554692056,1554686820,0,'温度感应器1','','温度感应器1','本站','','&lt;p&gt;温度感应器1参数.............................&lt;/p&gt;',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190408\\/a3a641794e15db12e88fd645989ec674.jpg\",\"name\":\"2870_P_1397697852957.jpg\"}]}'),(31,0,1,1,1,1,1,0,0,0,0,0,0,1554694758,1554706864,1554694680,0,'烟感器2','','烟感器2','本站','','\n&lt;p&gt;烟感器参数1...................................&lt;/p&gt;\n&lt;p&gt;烟感器参数2...................................&lt;/p&gt;\n&lt;p&gt;烟感器参数3...................................&lt;/p&gt;\n&lt;p&gt;烟感器参数4...................................&lt;/p&gt;\n&lt;p&gt;烟感器参数5...................................&lt;/p&gt;\n&lt;p&gt;烟感器参数6...................................&lt;/p&gt;\n&lt;p&gt;烟感器参数7...................................&lt;/p&gt;\n&lt;p&gt;烟感器参数8...................................&lt;/p&gt;\n',NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20190408\\/a4ff90d4c9b46fe16d1eda4689793329.jpg\",\"name\":\"product1_min.jpg\"}]}'),(32,0,1,1,1,1,1,0,0,0,0,0,0,1554712182,1555571123,1554712020,0,'4对4前端指导','','更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。','','portal/20190418/b9ff67c8b292bb018c579fe3706c2b3e.jpg',NULL,NULL,'{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190418\\/b9ff67c8b292bb018c579fe3706c2b3e.jpg\",\"template\":\"\"}');

/*Table structure for table `cmf_portal_tag` */

DROP TABLE IF EXISTS `cmf_portal_tag`;

CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

/*Data for the table `cmf_portal_tag` */

/*Table structure for table `cmf_portal_tag_post` */

DROP TABLE IF EXISTS `cmf_portal_tag_post`;

CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

/*Data for the table `cmf_portal_tag_post` */

/*Table structure for table `cmf_recycle_bin` */

DROP TABLE IF EXISTS `cmf_recycle_bin`;

CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

/*Data for the table `cmf_recycle_bin` */

insert  into `cmf_recycle_bin`(`id`,`object_id`,`create_time`,`table_name`,`name`,`user_id`) values (1,1,1554691211,'portal_post','烟感器',1),(2,4,1554691218,'portal_post','温度感应器',1),(3,2,1554691223,'portal_post','水位感应器',1),(4,3,1554691229,'portal_post','智能烟感器',1);

/*Table structure for table `cmf_role` */

DROP TABLE IF EXISTS `cmf_role`;

CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

/*Data for the table `cmf_role` */

insert  into `cmf_role`(`id`,`parent_id`,`status`,`create_time`,`update_time`,`list_order`,`name`,`remark`) values (1,0,1,1329633709,1329633709,0,'超级管理员','拥有网站最高管理员权限！'),(2,0,1,1329633709,1329633709,0,'普通管理员','权限由最高管理员分配！');

/*Table structure for table `cmf_role_user` */

DROP TABLE IF EXISTS `cmf_role_user`;

CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

/*Data for the table `cmf_role_user` */

/*Table structure for table `cmf_route` */

DROP TABLE IF EXISTS `cmf_route`;

CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

/*Data for the table `cmf_route` */

insert  into `cmf_route`(`id`,`list_order`,`status`,`type`,`full_url`,`url`) values (1,5000,1,2,'portal/List/index?id=2','为客户打造完美的专业服务'),(2,4999,1,2,'portal/Article/index?cid=2','为客户打造完美的专业服务/:id'),(3,5000,1,2,'portal/List/index?id=10','产品管理'),(4,4999,1,2,'portal/Article/index?cid=10','产品管理/:id');

/*Table structure for table `cmf_slide` */

DROP TABLE IF EXISTS `cmf_slide`;

CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

/*Data for the table `cmf_slide` */

insert  into `cmf_slide`(`id`,`status`,`delete_time`,`name`,`remark`) values (1,1,0,'首页顶部轮播图','首页顶部出现的轮播图'),(2,1,0,'首页顶部轮播图','首页顶部出现的轮播图'),(3,1,0,'底部幻灯片','底部显示二维码');

/*Table structure for table `cmf_slide_item` */

DROP TABLE IF EXISTS `cmf_slide_item`;

CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

/*Data for the table `cmf_slide_item` */

insert  into `cmf_slide_item`(`id`,`slide_id`,`status`,`list_order`,`title`,`image`,`url`,`target`,`description`,`content`,`more`) values (1,1,1,10000,'金联智能1','portal/20190418/a595cd3dfb4f1b8fa292942df6823a33.jpg','#','','消防安全卫士1','',NULL),(2,1,1,10000,'金联智能2','default/20190418/94e12cd5a45523320af64ce707199656.jpg','#','','安全消防卫士2','',NULL),(3,2,1,10000,'金联智能3','default/20190402/6aa05c6e2f89c7e6d0c90185b77ee4cc.jpg','','','消防安全卫士3','',NULL),(4,2,1,10000,'金联智能4','default/20190402/78b6fbdcc75ea5610fa2b43df87fd8ad.jpg','','','消防安全卫士4','',NULL),(5,2,1,10000,'金联智能5','default/20190402/ee9b2b9be7a8db2e227cb7b35fa41273.jpg','','','消防安全卫士5','',NULL),(6,3,1,10000,'扫一扫公众号','default/20190404/74a618b430cca2d75faf8834662d0388.jpg','','','','',NULL),(7,3,1,10000,'扫一扫小程序','default/20190404/74a618b430cca2d75faf8834662d0388.jpg','','','','',NULL);

/*Table structure for table `cmf_theme` */

DROP TABLE IF EXISTS `cmf_theme`;

CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cmf_theme` */

insert  into `cmf_theme`(`id`,`create_time`,`update_time`,`status`,`is_compiled`,`theme`,`name`,`version`,`demo_url`,`thumbnail`,`author`,`author_url`,`lang`,`keywords`,`description`) values (1,0,0,0,0,'default','default','1.0.0','http://demo.thinkcmf.com','','ThinkCMF','http://www.thinkcmf.com','zh-cn','ThinkCMF默认模板','ThinkCMF默认模板');

/*Table structure for table `cmf_theme_file` */

DROP TABLE IF EXISTS `cmf_theme_file`;

CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `cmf_theme_file` */

insert  into `cmf_theme_file`(`id`,`is_public`,`list_order`,`theme`,`name`,`action`,`file`,`description`,`more`,`config_more`,`draft_more`) values (9,1,5,'default','导航栏信息','public/Nav','portal/public/nav','导航栏内容','{\"vars\":{\"logo\":{\"title\":\"\\u516c\\u53f8Logo\",\"name\":\"logo\",\"value\":\"default\\/20190402\\/3dc1f286070e42fcc3f93ab812cd1923.png\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9Logo\\u56fe\\u7247\\uff0c\\u5efa\\u8bae\\u56fe\\u7247\\u5e95\\u8272\\u4e3a\\u767d\\u8272(.jpg)\\u6216\\u900f\\u660e(.png)\",\"rule\":[]},\"site_name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"name\":\"site_name\",\"value\":\"\\u91d1\\u8054\\u667a\\u80fd\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u60a8\\u7684\\u516c\\u53f8\\u540d\\u79f0\\uff01\\u5efa\\u8bae\\u4ee5\\u56fe\\u7247logo\\u5f62\\u5f0f\\u4e3a\\u4e3b\\uff01\",\"rule\":[]}}}','{\"vars\":{\"logo\":{\"title\":\"\\u516c\\u53f8Logo\",\"name\":\"logo\",\"value\":\"\",\"type\":\"image\",\"tip\":\"\\u8bf7\\u9009\\u62e9Logo\\u56fe\\u7247\\uff0c\\u5efa\\u8bae\\u56fe\\u7247\\u5e95\\u8272\\u4e3a\\u767d\\u8272(.jpg)\\u6216\\u900f\\u660e(.png)\",\"rule\":[]},\"site_name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"name\":\"site_name\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u8f93\\u5165\\u60a8\\u7684\\u516c\\u53f8\\u540d\\u79f0\\uff01\\u5efa\\u8bae\\u4ee5\\u56fe\\u7247logo\\u5f62\\u5f0f\\u4e3a\\u4e3b\\uff01\",\"rule\":[]}}}',NULL),(18,0,6,'default','首页','portal/Index/index','portal/index','首页模板文件','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true},\"valueText\":\"\\u9996\\u9875\\u9876\\u90e8\\u8f6e\\u64ad\\u56fe\"}},\"widgets\":{\"first_section\":{\"title\":\"\\u4e13\\u4e3a\\u6d88\\u9632\\u5b89\\u5168\\u800c\\u7814\\u5236\\u7684|\\u6838\\u5fc3\\u4ea7\\u54c1\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"10\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u4ea7\\u54c1\"}}},\"lower_part\":{\"title\":\"\\u4e3a\\u5ba2\\u6237\\u6253\\u9020\\u5b8c\\u7f8e\\u7684|\\u4e13\\u4e1a\\u670d\\u52a1\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"2\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u4e3a\\u5ba2\\u6237\\u6253\\u9020\\u5b8c\\u7f8e\\u7684\\u4e13\\u4e1a\\u670d\\u52a1\"}}}}}','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"first_section\":{\"title\":\"\\u4e13\\u4e3a\\u6d88\\u9632\\u5b89\\u5168\\u800c\\u7814\\u5236\\u7684|\\u6838\\u5fc3\\u4ea7\\u54c1\",\"name\":\"all_widget\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}},\"lower_part\":{\"title\":\"\\u4e3a\\u5ba2\\u6237\\u6253\\u9020\\u5b8c\\u7f8e\\u7684|\\u4e13\\u4e1a\\u670d\\u52a1\",\"name\":\"all_widget\",\"display\":\"2\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}}}}',NULL),(19,0,7,'default','产品页','portal/Porduct/index','portal/product','产品页模板文件','{\"widgets\":{\"first_section\":{\"title\":\"\\u4e13\\u4e3a\\u6d88\\u9632\\u5b89\\u5168\\u800c\\u7814\\u5236\\u7684|\\u6838\\u5fc3\\u4ea7\\u54c1\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"10\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u4ea7\\u54c1\"}}}}}','{\"widgets\":{\"first_section\":{\"title\":\"\\u4e13\\u4e3a\\u6d88\\u9632\\u5b89\\u5168\\u800c\\u7814\\u5236\\u7684|\\u6838\\u5fc3\\u4ea7\\u54c1\",\"name\":\"all_widget\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}}}}',NULL),(20,0,8,'default','新闻动态页','portal/News/index','portal/news','产品页模板文件','{\"widgets\":{\"news_conetent\":{\"title\":\"\\u65b0\\u95fb\\u52a8\\u6001\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"4\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u884c\\u4e1a\\u52a8\\u6001\"}}},\"news_coneten\":{\"title\":\"\\u516c\\u53f8\\u52a8\\u6001\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"5\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u516c\\u53f8\\u52a8\\u6001\"}}}}}','{\"widgets\":{\"news_conetent\":{\"title\":\"\\u884c\\u4e1a\\u52a8\\u6001\",\"name\":\"all_widget\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}},\"news_coneten\":{\"title\":\"\\u516c\\u53f8\\u52a8\\u6001\",\"name\":\"all_widget\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}}}}',NULL),(21,0,10,'default','案例页面','portal/News/index','portal/case','案例页模板文件','{\"widgets\":{\"case_conetent\":{\"title\":\"\\u6848\\u4f8b\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"6\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u6848\\u4f8b\"}}}}}','{\"widgets\":{\"case_conetent\":{\"title\":\"\\u6848\\u4f8b\",\"name\":\"all_widget\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}}}}',NULL),(22,0,11,'default','关于我们页','portal/News/index','portal/about','关于我们页模板文件','{\"widgets\":{\"company_profile\":{\"title\":\"\\u516c\\u53f8\\u7b80\\u4ecb\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"8\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u516c\\u53f8\\u7b80\\u4ecb\"}}},\"development_history\":{\"title\":\"\\u53d1\\u5c55\\u5386\\u7a0b\",\"name\":\"all_widget\",\"display\":1,\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"9\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true},\"valueText\":\"\\u53d1\\u5c55\\u5386\\u7a0b\"}}}}}','{\"widgets\":{\"company_profile\":{\"title\":\"\\u516c\\u53f8\\u7b80\\u4ecb\",\"name\":\"all_widget\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}},\"development_history\":{\"title\":\"\\u53d1\\u5c55\\u5386\\u7a0b\",\"name\":\"all_widget\",\"display\":\"1\",\"vars\":{\"category\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"value\":\"\",\"type\":\"text\",\"tip\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\\uff01\",\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u6587\\u7ae0\\u5206\\u7c7b\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":false},\"rule\":{\"require\":true}}}}}}',NULL),(23,1,4,'default','首页头部信息','public/Head','portal/public/head','首页模板文件','{\"vars\":{\"name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"value\":\"\\u91d1\\u8054\\u667a\\u80fd\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u7f51\\u7ad9\\u540d\\u79f0\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u7f51\\u7ad9\\u540d\\u79f0\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u9996\\u9875\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"name\":{\"title\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"value\":\"\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u7f51\\u7ad9\\u540d\\u79f0\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u7f51\\u7ad9\\u540d\\u79f0\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u9996\\u9875\",\"rule\":{\"require\":true}}}}',NULL),(24,1,15,'default','底部','public/Footer','portal/public/footer','底部模板文件','{\"vars\":{\"bottom_slide\":{\"title\":\"\\u5e95\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"3\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5e95\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u5e95\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true},\"valueText\":\"\\u5e95\\u90e8\\u5e7b\\u706f\\u7247\"},\"mobile\":{\"title\":\"\\u4f01\\u4e1a\\u7535\\u8bdd\",\"value\":\"0755-88888888\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u4f01\\u4e1a\\u7535\\u8bdd\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u4f01\\u4e1a\\u7535\\u8bdd\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u4f01\\u4e1a\\u90ae\\u7bb1\",\"value\":\"88888888@163.com\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u4f01\\u4e1a\\u90ae\\u7bb1\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u4f01\\u4e1a\\u90ae\\u7bb1\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"address\":{\"title\":\"\\u4f01\\u4e1a\\u5730\\u5740\",\"value\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u6ee8\\u6cb3\\u5927\\u90535003\\u53f7\\u7231\\u5730\\u5927\\u53a6\\u4e1c\\u5ea715\\u697c\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u4f01\\u4e1a\\u5730\\u5740\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u4f01\\u4e1a\\u5730\\u5740\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"ICP\":{\"title\":\"ICP\\u5907\",\"value\":\"11111111\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199ICP\\u5907\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684ICP\\u5907\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"public\":{\"title\":\"\\u516c\\u5b89\\u7f51\\u5907\",\"value\":\"22222222\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u516c\\u5b89\\u7f51\\u5907\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u516c\\u5b89\\u7f51\\u5907\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"bottom_slide\":{\"title\":\"\\u5e95\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"1\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5e95\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u5e95\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}},\"mobile\":{\"title\":\"\\u4f01\\u4e1a\\u7535\\u8bdd\",\"value\":\"\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u4f01\\u4e1a\\u7535\\u8bdd\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u4f01\\u4e1a\\u7535\\u8bdd\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u4f01\\u4e1a\\u90ae\\u7bb1\",\"value\":\"\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u4f01\\u4e1a\\u90ae\\u7bb1\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u4f01\\u4e1a\\u90ae\\u7bb1\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"address\":{\"title\":\"\\u4f01\\u4e1a\\u5730\\u5740\",\"value\":\"\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u4f01\\u4e1a\\u5730\\u5740\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u4f01\\u4e1a\\u5730\\u5740\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"ICP\":{\"title\":\"ICP\\u5907\",\"value\":\"\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199ICP\\u5907\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684ICP\\u5907\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}},\"public\":{\"title\":\"\\u516c\\u5b89\\u7f51\\u5907\",\"value\":\"\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u586b\\u5199\\u516c\\u5b89\\u7f51\\u5907\",\"tip\":\"\\u8bbe\\u7f6e\\u540e\\u60a8\\u7684\\u516c\\u5b89\\u7f51\\u5907\\u5c06\\u4f1a\\u663e\\u793a\\u5728\\u5e95\\u90e8\",\"rule\":{\"require\":true}}}}',NULL);

/*Table structure for table `cmf_third_party_user` */

DROP TABLE IF EXISTS `cmf_third_party_user`;

CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

/*Data for the table `cmf_third_party_user` */

/*Table structure for table `cmf_user` */

DROP TABLE IF EXISTS `cmf_user`;

CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

/*Data for the table `cmf_user` */

insert  into `cmf_user`(`id`,`user_type`,`sex`,`birthday`,`last_login_time`,`score`,`coin`,`balance`,`create_time`,`user_status`,`user_login`,`user_pass`,`user_nickname`,`user_email`,`user_url`,`avatar`,`signature`,`last_login_ip`,`user_activation_key`,`mobile`,`more`) values (1,1,0,0,1555465612,0,0,'0.00',1554168106,1,'admin','###b493138f355024e4ae05bb0607caa316','admin','3450817337@qq.com','','','','192.168.19.50','','',NULL);

/*Table structure for table `cmf_user_action` */

DROP TABLE IF EXISTS `cmf_user_action`;

CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

/*Data for the table `cmf_user_action` */

insert  into `cmf_user_action`(`id`,`score`,`coin`,`reward_number`,`cycle_type`,`cycle_time`,`name`,`action`,`app`,`url`) values (1,1,1,1,2,1,'用户登录','login','user','');

/*Table structure for table `cmf_user_action_log` */

DROP TABLE IF EXISTS `cmf_user_action_log`;

CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

/*Data for the table `cmf_user_action_log` */

/*Table structure for table `cmf_user_balance_log` */

DROP TABLE IF EXISTS `cmf_user_balance_log`;

CREATE TABLE `cmf_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';

/*Data for the table `cmf_user_balance_log` */

/*Table structure for table `cmf_user_favorite` */

DROP TABLE IF EXISTS `cmf_user_favorite`;

CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

/*Data for the table `cmf_user_favorite` */

/*Table structure for table `cmf_user_like` */

DROP TABLE IF EXISTS `cmf_user_like`;

CREATE TABLE `cmf_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

/*Data for the table `cmf_user_like` */

/*Table structure for table `cmf_user_login_attempt` */

DROP TABLE IF EXISTS `cmf_user_login_attempt`;

CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

/*Data for the table `cmf_user_login_attempt` */

/*Table structure for table `cmf_user_score_log` */

DROP TABLE IF EXISTS `cmf_user_score_log`;

CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

/*Data for the table `cmf_user_score_log` */

/*Table structure for table `cmf_user_token` */

DROP TABLE IF EXISTS `cmf_user_token`;

CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

/*Data for the table `cmf_user_token` */

insert  into `cmf_user_token`(`id`,`user_id`,`expire_time`,`create_time`,`token`,`device_type`) values (1,1,1569720223,1554168223,'d094077972ec260631115d4de1c2d36f46cec3cef742f104e36f4e8b82237558','web');

/*Table structure for table `cmf_verification_code` */

DROP TABLE IF EXISTS `cmf_verification_code`;

CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

/*Data for the table `cmf_verification_code` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
