<?php

$dev = $_SERVER['REMOTE_ADDR']==='127.0.0.1' ? true : false;

if($dev)
{
    $baza = [
        'server'=>'localhost',
        'baza'=>'edunovapp23',
        'korisnik'=>'edunova',
        'lozinka'=>'edunova'
    ];
    $url = 'http://Zavrsni_rad_PP23.xyz/';
}
else
{
    $baza = [
        'server'=>'localhost',
        'baza'=>'afrodita_pp23',
        'korisnik'=>'afrodita_Filip-J',
        'lozinka'=>'t84durft1994@'
    ];
    $url = 'http://Zavrsni_rad_PP23.xyz/';
}

return [
    'dev' => $dev,
    'nazivApp'=>'OPG zapisnik',
    'url'=> $url,
    'baza'=> $baza
];