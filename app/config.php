<?php

$dev = $_SERVER['REMOTE_ADDR']==='127.0.0.1' ? true : false;

if($dev)
{
    $database = [
        'host'=>'localhost',
        'dbName'=>'opgzapisnik',
        'username'=>'root',
        'password'=>''
    ];
    $url = 'http://Zavrsni_rad_PP23.xyz/';
}
else
{
    $database = [
        'host'=>'localhost',
        'dbName'=>'afrodita_pp23',
        'username'=>'afrodita_Filip-J',
        'password'=>'t84durft1994@'
    ];
    $url = 'http://Zavrsni_rad_PP23.xyz/';
}

return 
[
    'dev' => $dev,
    'appName'=>'OPG zapisnik',
    'url'=> $url,
    'database'=> $database
];