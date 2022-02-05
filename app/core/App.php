<?php

class App
{
    public static function start()
    {
        $route = Request::getRoute();
        
        $parts = explode('/',$route);
        
        $class = '';
        if(!isset($parts[1]) || $parts[1]==''){
            $class = 'Index';
        }else{
            $class = ucfirst($parts[1]);
        }
        $class .= 'Controller';

        $method = '';
        if(!isset($parts [2]) || $parts [2]==''){
            $method = 'index';
        }else{
            $method=$parts[2];
        }
        $code = 0;
        if(!isset($parts [3]) || $parts [4]==''){
        }else{
            $code[3];
        }
        if(class_exists($class) && method_exists($class,$method)){
            $instance = new $class();
            if($code==0){
                $instance->$method();
            }else{
                $instance->$method($code);
            }
        }else{
            $view = new View();
            $view-render ('error404',[
                'ERROR'=>$class . '->' . $method
            ]);
        }
    }
    public static function config($key)
    {
        $config = include BP_APP . 'configuration.php';
        return $config[$key];
    }
}