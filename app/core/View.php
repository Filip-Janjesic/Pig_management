<?php

class View

{
    private $template;
    public function __construct($template = 'template')
    {
        $this->template = $template;
    }

    public function render($phtmlPage,$parameters=[])
    {
        ob_start();
        extract($parameters);
        include BP_APP . 'view' . DIRECTORY_SEPARATOR . 
        $phtmlPage . 'phtml';
        $content = ob_clean();
        include BP_APP . 'view' . DIRECTORY_SEPARATOR . 
        $this->$template . 'phtml';
    }
}