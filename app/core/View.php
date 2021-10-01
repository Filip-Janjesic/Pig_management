
<?php

class View
{

    private $predlozak;

    public function __construct($predlozak='predlozak')
    {
        $this->predlozak = $predlozak;
    }

    public function render($phtmlStranica,$parametri=[])
    {
        ob_start();
        extract($parametri);
        include BP_APP  . 'view' . DIRECTORY_SEPARATOR .  
        $this->predlozak . '.phtml';
    }


}

