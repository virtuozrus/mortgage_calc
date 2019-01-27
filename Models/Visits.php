<?php
/**
 * Created by PhpStorm.
 * User: virtuoz
 * Date: 24.01.19
 * Time: 16:31
 */

class Visits extends Model
{

    public function visit() {
        $userhash = $_COOKIE["userhash"]; // Узнаём, что за пользователь
        if (!$userhash) {
            /* Если это новый пользователь, то добавляем ему cookie, уникальные для него */
            $userhash = uniqid();
            setcookie("userhash", $userhash, 0x6FFFFFFF);
        }
        $ip = ip2long($_SERVER["REMOTE_ADDR"]); // Преобразуем IP в число
        $uri = $_SERVER["REQUEST_URI"]; // Узнаём uri

        $sql = "INSERT INTO `visits` (`userhash`, `ip`, `uri`) VALUES (:userhash, :ip, :uri);";
        $req = Database::getBdd()->prepare($sql);
        return $req->execute([
            'userhash' => $userhash,
            'ip' => $ip,
            'uri' => $uri,
        ]);
    }

}