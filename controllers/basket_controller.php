<?php
/**
 * Created by PhpStorm.
 * User: zahra
 * Date: 24.04.18
 * Time: 11:35
 */
namespace basket;

class basket_controller {


    public function addtobasket() {
        $data = json_decode($_POST['data'],true);
        $u_id = 1;//it should be a session for user_id and should be chec if user login
        if($data['p_id'] != '') $name = $data['p_id'];
        $result = basket::addtobasket($data['p_id'],$u_id);

        if($result)   echo "the product has been added to basket.";
        else echo "error in adding product to basket.";
    }
}
?>
