<?php
$localhost= false;
if($_SERVER['SERVER_ADDR'] === '127.0.0.1'){
    $url = 'http://Pig_managment.xyz/';
    $localhost= true;

}

return [
    'localhost' => $localhost,
    'nameAPP' => 'Pig managment',
    'url' => 'http://Pig_managment.xyz/',
    'database' => [
        'server' => 'localhost',
        'name' => 'opg',
        'user' => 'Filip-J',
        'password' => 't84durft1994'
    ]
];