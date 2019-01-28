<?php
require(ROOT."Core/Authorisation_session.php");

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
<h1><?php echo $lang['title_login'] ?></h1>
<div>

    <?php

    if ($auth->maybe()) {
        header("Location: /v/login/calc/");
    } else {
    ?>

    <form method="post">
        <label><?php echo $lang['login']; ?>:</label><br/>
        <input name="login" type="text" size="15" maxlength="30"><br/>
        <label><?php echo $lang['password']; ?>:</label><br/>
        <input name="password" type="password" size="15" maxlength="30"><br/><br/>
        <input type="submit" value="<?php echo $lang['enter']; ?>"><br/><br/>
    </form>
    <?php echo $lang['hello']; ?><span style="color: red;"><?php echo $lang['guest']; ?></span>! <br/>
    <?php echo $lang['auth']; ?>

</div>

<?php } ?>