<?php
include (ROOT . "Core/Authorisation_session.php");
//смена языка
// Получаем массив $matches с соответствиями
preg_match_all('/([a-z]{1,8}(?:-[a-z]{1,8})?)(?:;q=([0-9.]+))?/',
    strtolower($_SERVER["HTTP_ACCEPT_LANGUAGE"]), $matches);

// Создаём массив с ключами $matches[1] и значениями $matches[2]
$langs = array_combine($matches[1], $matches[2]);

foreach ($langs as $n => $v)
    // Если нет q, то ставим значение 1
    $langs[$n] = $v ? $v : 1;

// Сортируем по убыванию q
arsort($langs);
// Берём 1-й ключ первого (текущего) элемента (он же максимальный по q)
$default_lang = key($langs);
$currentLang = substr($default_lang, 0, 2);

switch ($currentLang) {
    case "ru":
        require (ROOT . "Config/lang.ru.php");
        break;
    case "en":
        require (ROOT . "Config/lang.en.php");
        break;
    default:
        require (ROOT . "Config/lang.ru.php");
}
?>

<br><a href="?exit=1"><?php echo $lang['exit']; ?></a>
<h1><?php echo $lang['h1_calc']; ?></h1>
<form id="form" action="" method="post">
    <label><?php echo $lang['cost']; ?>:</label><br>
    <input type="text" name="price" id="price" placeholder="1-100 <?php echo $lang['mln']; ?>"><br>
    <label><?php echo $lang['vznos']; ?>:</label><br>
    <input type="text" name="vznos" id="vznos" placeholder="0-100%"><br>
    <label><?php echo $lang['srok']; ?>:</label><br>
    <input type="text" name="period" id="period" placeholder="12-600 <?php echo $lang['years']; ?>"><br><br>
    <button type="button" id="btn" onclick="calculate()"><?php echo $lang['submit']; ?></button>
</form>

<br><br>

<p id="result_form"></p>

<script src="/Views/Login/form.js"></script>
