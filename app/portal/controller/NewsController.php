<?php
/**
 * Created by PhpStorm.
 * User: bella
 * Date: 2019/4/3 0003
 * Time: 11:28
 */

namespace app\portal\controller;

use cmf\controller\HomeBaseController;

class NewsController extends HomeBaseController
{
    public function index()
    {
        return $this->fetch(':news');
    }
}

