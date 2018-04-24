<?php
/**
 * Created by PhpStorm.
 * User: zahra
 * Date: 24.04.18
 * Time: 12:41
 */
?>
<div class="filter_box">
    <span>name: </span><input type="text" id="p_name" />

    <span>color: </span>
    <input type="checkbox" value="red">red
    <input type="checkbox" value="black">black
    <input type="checkbox" value="green">green
    <input type="checkbox" value="white">white
    <input type="checkbox" value="blue">blue

    <input type="button" value="search" />
</div>
<div id="p_list">
<?php
    require_once ("views/products/list.php");
?>
</div>
