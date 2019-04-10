<?php
/**
 * Created by PhpStorm.
 * User: bella
 * Date: 2019/4/3 0003
 * Time: 11:10
 */

namespace app\portal\controller;

use app\portal\model\PortalPostModel;
use cmf\controller\HomeBaseController;
class NewsDetailController extends HomeBaseController
{
    public function index()
    {
        $param = $this->request->param('id');
        $result = PortalPostModel::get($param);
        $this->assign('result',$result);
        return $this->fetch(':news_detail');
    }
}