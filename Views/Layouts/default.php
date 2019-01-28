<?php
session_start();

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

<!doctype html>
<head>
    <meta charset="utf-8">

    <title><?php echo $lang['title_calc']; ?></title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet">

    <link href="starter-template.css" rel="stylesheet">

    <style>
        body {
            padding-top: 5rem;
        }
        .starter-template {
            padding: 3rem 1.5rem;
            text-align: center;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="/v/"><?php echo $lang['title_calc'] ?></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
</nav>

<main role="main" class="container">

    <div class="starter-template">

        <?php
        echo $content_for_layout;
        ?>

    </div>

</main>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</body>
</html>
