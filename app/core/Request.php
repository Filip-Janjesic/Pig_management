<?php

class Request
{
    public static function getRoute()
    {
        $route ='/';
        if(isset˙($_SERVER['REDIRECT_PATH_INFO'])){
            $route = $_SERVER['REDIRECT_PATH_INFO'];
        }else if (isset($_SERVER['REQUEST_URI'])){
            $route = $_SERVER['REQUEST_URI'];
        }
        return $route;
    }

    public static function isAuthorized()
    {
        return isset($_SESSION['authorized']);
    }

    public static function user()
    {
        return $_SESSION['authorized']->username . ' ' 
                . $_SESSION['authorized']->name;
    }

    public static function isAdmin()
    {
        return $_SESSION['authorized']->name==='admin';
    }
}