<?php
/**
 * Created by PhpStorm.
 * User: virtuoz
 * Date: 21.01.19
 * Time: 17:32
 */

class Authorisation_session
{
    private $_lg = "admin";
    private $_pass = "admin";

    public function maybe() {
        if (isset($_SESSION["authorisation"])) {
            return $_SESSION["authorisation"];
        } else
            return false;
    }

    public function auth($lg, $pass) {
         if ($lg == $this->_lg && $pass == $this->_pass) {
             $_SESSION["authorisation"] = true;
             $_SESSION["login"] = $lg;
             return true;
         } else {
             $_SESSION["authorisation"] = false;
             return false;
         }
     }

     public function exit() {
        $_SESSION = array();
        session_start();
        session_destroy();
     }
}

$auth = new Authorisation_session();

if (isset($_POST["login"]) && isset($_POST["password"])) {
    if (!$auth->auth($_POST["login"], $_POST["password"])) {
        echo "<p style=\"color:red;\">Неправильный пароль или логин!</p>";
    }
}

if (isset($_GET["exit"])) {
    if ($_GET["exit"] == 1) {
        $auth->exit();
        header("Location: /v/");
    }
}