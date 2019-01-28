<?php
/**
 * Created by PhpStorm.
 * User: virtuoz
 * Date: 26.01.19
 * Time: 22:51
 */

// стоимость жилья
$price = $_REQUEST['price'];
//первоначальный взнос
$vznos = $_REQUEST['vznos'];
//срок ипотеки
$period = $_REQUEST['period'];

// избавляемся от html тегов
// не работает через метод контроллера
$price = trim($price);
$price = stripslashes($price);
$price = htmlspecialchars($price);

$vznos = trim($vznos);
$vznos = stripslashes($vznos);
$vznos = htmlspecialchars($vznos);

$period = trim($period);
$period = stripslashes($period);
$period = htmlspecialchars($period);

// взнос в рублях
$vznosRub = $price / 100 * $vznos;
//сумма ипотеки
$ipoteka = $price - $vznosRub;
//процент по ипотеке (от 7 до 25%)
switch ($period) {
    case ($period > 12 && $period < 150):
        $proc = 7;
        break;
    case ($period >= 150 && $period < 300):
        $proc = 13;
        break;
    case ($period >= 300 && $period < 450):
        $proc = 19;
        break;
    case ($period >= 450 && $period <= 600):
        $proc = 25;
        break;
    default:
        $proc = 7;
}
//ндс
$nds = 20;
$nds2 = (100 + $nds) / 100; // 20% = 1.2
//комиссия банка (мин 5%)
$kom = 5;
$kom2 = (100 + $kom) / 100; // 5% = 1.05
//ежемесячная плата
$monthly = round(($ipoteka) / ($period), 2);
//общая выплата без ипотеки
$viplata = round($monthly * $period);
// процент по ипотеке переведеннеый в доли за месяц
$proc2 = $proc / 12 / 100;
//ежемесячный + процент по ипотеке
$monthlyIpoteka = ($nds2 * $kom2 * $ipoteka * $proc2 * (1 + $proc2) ** $period) / ((1 + $proc2) ** $period - 1);
$monthlyIpoteka = round(($monthlyIpoteka), 2);
//$prov = ($ipoteka * $proc) / (1 - (1 + $proc) ** (- $period));
//общая выплата с ипотекой
$viplataIpoteka = $monthlyIpoteka * $period;
// переплата
$pereplata = $viplataIpoteka - $viplata;

echo "Введенная стоимость жилья: " . $price . " руб" . "<br>";
echo "Введенный первоначальный взнос: " . $vznos . "% или " . $vznosRub . " руб" . "<br>";
echo "Сумма для ипотеки: " . "$ipoteka" . " руб" . "<br>";
echo "Налог на добавленную стоимость (НДС): " . "$nds" . "%" . "<br>";
echo "Комиссия банка: " . "$kom" . "%" . "<br><br>";

echo "Ежемесячная плата без ипотеки: " . $monthly . " руб/мес" . "<br><br>";

echo "Ваш процент по ипотеке: " . $proc . "%" . "<br>";
echo "Ежемесячный платеж при ипотеке: " . $monthlyIpoteka . " руб/мес" . "<br>";
echo "Общая выплата при ипотеке: " . "$viplataIpoteka" . " руб" . "<br>";
echo "<b>Переплата: " . "$pereplata" . " руб" . "</b><br>";

