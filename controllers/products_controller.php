<?php
/**
 * Created by PhpStorm.
 * User: zahra
 * Date: 24.04.18
 * Time: 11:35
 */
namespace products;

class products_controller {
    public function index() {
        $products = products::all();
        require_once('views/products/index.php');
    }

    public function filter() {
        $data = json_decode($_POST['data'],true);
        $name = '';
        if($data['name'] != '') $name = $data['name'];
        $products = products::find($data['color'],$data['name']);

        require_once('views/products/list.php');
    }
}
?>
