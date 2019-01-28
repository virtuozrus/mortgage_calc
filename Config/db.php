<?php

class Database
{
    private static $bdd = null;

    private function __construct() {
    }

    public static function getBdd() {
        if(is_null(self::$bdd)) {
            require (ROOT . 'Config/config.php');
            $host = $database['host'];
            $dbname = $database['db_name'];
            $username = $database['name'];
            $passwd = $database['password'];
            self::$bdd = new PDO("mysql:host=$host;dbname=$dbname", $username, $passwd);
        }
        return self::$bdd;
    }
}
?>