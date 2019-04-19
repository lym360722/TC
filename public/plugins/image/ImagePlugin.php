<?php
// +----------------------------------------------------------------------
// | Image [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2018 Tangchao All rights reserved.
// +----------------------------------------------------------------------
// | Author: Tangchao <79300975@qq.com>
// +----------------------------------------------------------------------
namespace plugins\image;
use cmf\lib\Plugin;
use app\portal\model\PortalPostModel;

class ImagePlugin extends Plugin
{

    public $info = [
        'name'        => 'Image',
        'title'       => '缩略图插件',
        'description' => '缩略图插件',
        'status'      => 1,
        'author'      => 'Tangchao',
        'version'     => '1.1',
        'demo_url'    => 'https://qq.ytecn.com',
        'author_url'  => 'https://qq.ytecn.com'
    ];

    public $hasAdmin = 1;

    public function install()
    {
        return true;
    }

    public function uninstall()
    {
        return true;
    }

    public function PortalAdminAfterSaveArticle($hookParam)
    {
        if(empty($hookParam['article']['more']['thumbnail'])){
            $data=[];
            $data['id']=$hookParam['article']['id'];
            $content = $hookParam['article']['post_content'];
            $pattern1 = "/ src=&quot;(.*)&quot;/iU";
            preg_match_all($pattern1,$content,$matchContent1);
            if(!empty($matchContent1[1][0])){
                $rurl = $matchContent1[1][0];
                $data['more']['thumbnail']=$rurl;
                $post=new PortalPostModel();
                $post->allowField(true)->isUpdate(true)->data($data, true)->save();
            }
        }
    }
}