<?php
/**
 * Created by PhpStorm.
 * User: zahra
 * Date: 24.04.18
 * Time: 14:08
 */

foreach ($products as $value){
    ?>

    <div class="p_box">
        <img src="images/product/<?php echo $value->image; ?>" />
        <div class="p_txt"><?php echo $value->name;?></div>
        <div class="p_txt"><?php echo "price:".$value->price;?></div>
        <div class="p_txt"><?php echo "gross:".$value->gross;?></div>
        <div class="p_txt"><?php echo "color:".$value->color;?></div>
        <input type="button" value="add to basket" rel="<?php echo $value->id; ?>" />
    </div>
<?php }?>