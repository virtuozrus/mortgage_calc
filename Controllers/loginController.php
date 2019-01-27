<?php
/**
 * Created by PhpStorm.
 * User: virtuoz
 * Date: 24.01.19
 * Time: 16:50
 */

class loginController extends Controller
{
//    public $currentLang;

    // главная
    function index()
    {
        require (ROOT . "Models/Visits.php");

        $visits = new Visits();
        $d['visits'] = $visits->visit();
        $this->set($d);
        // не работает смена языка через метод
//        $currentLang = $this->language();
//        require (ROOT . "Config/lang." . $currentLang . ".php");
        $this->render("index");
    }

    //страница калькулятора
    function calc()
    {
        $this->render("calc");
    }

    // журнал посещений
    function visitsLog() {

        require(ROOT . 'Models/Visits.php');

        $userhash = $_COOKIE["userhash"]; // Узнаём, что за пользователь
        if (!$userhash) {
            /* Если это новый пользователь, то добавляем ему cookie, уникальные для него */
            $userhash = uniqid();
            setcookie("userhash", $userhash, 0x6FFFFFFF);
        }
        $ip = ip2long($_SERVER["REMOTE_ADDR"]); // Преобразуем IP в число
        $uri = $_SERVER["REQUEST_URI"]; // Узнаём uri

        $v = new Visits();

    }

// смена языка
// не работает через метод
//    function language() {
//        // Получаем массив $matches с соответствиями
//        preg_match_all('/([a-z]{1,8}(?:-[a-z]{1,8})?)(?:;q=([0-9.]+))?/',
//                       strtolower($_SERVER["HTTP_ACCEPT_LANGUAGE"]), $matches);
//
//        // Создаём массив с ключами $matches[1] и значениями $matches[2]
//        $langs = array_combine($matches[1], $matches[2]);
//
//        foreach ($langs as $n => $v)
//            // Если нет q, то ставим значение 1
//            $langs[$n] = $v ? $v : 1;
//
//        // Сортируем по убыванию q
//        arsort($langs);
//        // Берём 1-й ключ первого (текущего) элемента (он же максимальный по q)
//        $default_lang = key($langs);
//        $currentLang = substr($default_lang, 0, 2);
//
//        switch ($currentLang) {
//            case "ru":
//                require (ROOT . "Config/lang.ru.php");
//                break;
//            case "en":
//                require (ROOT . "Config/lang.en.php");
//                break;
//            default:
//                require (ROOT . "Config/lang.ru.php");
//        }

//        if ($currentLang == 'en' || $currentLang == 'ru') {
//            include_once (ROOT . "Config/lang.".$currentLang.".php");
////            return $currentLang;
//        } else {
//            $currentLang = 'en';
////            return $currentLang;
//            include_once (ROOT . "Config/lang.".$currentLang.".php");
//        }
//    }

}