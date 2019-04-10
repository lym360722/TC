<?php
/**
 * Created by PhpStorm.
 * User: bella
 * Date: 2019/4/2 0002
 * Time: 10:07
 */

namespace app\portal\controller;


use cmf\controller\HomeBaseController;

class CaseController extends HomeBaseController
{
    public function index()
    {
        return $this->fetch(":case");
    }
}