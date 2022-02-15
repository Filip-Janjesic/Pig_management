<form class="log-in-form" method="POST"
action="<?php echo $_SERVER['REQUEST_URI'];?>">

<?php
Utilities::inputTextArray((array)$farm);
?>

<div class="grid-x grid-padding-x">
    <div class="large-6 cell">
        <a href="<?=App::config('url')?>farm/index" 
        class="alert button expanded">Back</a>
    </div>
    <div class="large-6 cell">
        <input type="submit" class="button expanded" 
        value="<?=$action?>"></input>
    </div>
  </div>
  
    <?=$message?>
</form>