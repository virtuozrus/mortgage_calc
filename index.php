<?php
ini_set('display_errors',1);
error_reporting(E_ALL);

define('WEBROOT', str_replace("index.php", "", $_SERVER["SCRIPT_NAME"]));
define('ROOT', str_replace("index.php", "", $_SERVER["SCRIPT_FILENAME"]));

require(ROOT . 'Config/core.php');

require(ROOT . 'router.php');
require(ROOT . 'request.php');
require(ROOT . 'dispatcher.php');

$dispatch = new Dispatcher();
$dispatch->dispatch();
?>