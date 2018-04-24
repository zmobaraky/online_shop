<?php
/**
 * Created by PhpStorm.
 * User: zahra
 * Date: 24.04.18
 * Time: 11:30
 */
require_once('autoload.php');
function call($controller, $action) {

    switch($controller) {
        case 'products':
            $controller = new products\products_controller();
            break;
        case 'basket':
            $controller = new \basket\basket_controller();
            break;
    }

    $controller->{ $action }();
}

// we're adding an entry for the new controller and its actions
$controllers = array('products' => ['index', 'filter'],
    'basket' => ['addtobasket']);

if (array_key_exists($controller, $controllers)) {
    if (in_array($action, $controllers[$controller])) {
        call($controller, $action);
    } else {
        call('products', 'index');
    }
} else {
    call('products', 'index');
}
?>