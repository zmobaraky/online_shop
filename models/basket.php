<?php
/**
 * Created by PhpStorm.
 * User: zahra
 * Date: 24.04.18
 * Time: 11:44
 */

namespace basket;

class basket {
    public $id;
    public $p_id;//product_id
    public $u_id;//user_id

    public function __construct($id,$p_id,$u_id) {
        $this->id = $id;
        $this->p_id = $p_id;
        $this->u_id = $u_id;
    }

    public static function addtobasket($p_id,$u_id)
    {
        $db = \Db::getInstance();

        $req = $db->prepare('INSERT INTO basket (p_id, u_id) VALUES (:p_id, :u_id)');
        $oResult = $req->execute(array('p_id' => $p_id,'u_id' => $u_id));

        return $oResult;
    }



    public static function find($u_id) {
        $list = [];
        $db = \Db::getInstance();

        $req = $db->query("SELECT * FROM basket WHERE u_id = $u_id ");

        foreach($req->fetchAll() as $basket) {
            $list[] = new products($basket['id'], $basket['p_id'], $basket['u_id']);
        }

         return $list;

    }
}
