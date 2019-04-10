<?php
/**
 * Created by PhpStorm.
 * User: bella
 * Date: 2019/4/2 0002
 * Time: 10:02
 */

namespace app\portal\controller;


use cmf\controller\HomeBaseController;

class ProductController extends HomeBaseController
{
    public function index()
    {
        return $this->fetch(":product");
    }
}