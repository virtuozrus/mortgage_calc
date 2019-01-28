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
        require (ROOT . "Models/Visits.php");

        $visits = new Visits();
        $d['visits'] = $visits->visit();
        $this->set($d);

        $this->render("calc");
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
//
//    }

}