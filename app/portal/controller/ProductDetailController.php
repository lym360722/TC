<?php
/**
 * Created by PhpStorm.
 * User: bella
 * Date: 2019/4/3 0003
 * Time: 11:10
 */

namespace app\portal\controller;


use cmf\controller\HomeBaseController;

class ProductDetailController extends HomeBaseController
{
    public function index()
    {
    	$categoryId = $this->request->param("id");
    	$this->assign('categoryId',$categoryId);
        return $this->fetch(":product_detail");
    }
}