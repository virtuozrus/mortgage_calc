# Ипотечный калькулятор с использованием MVC паттерна

При обращении на сайт пользователь попадает на index.php в корневой папке, который в свою очередь
при помощи dispathcher.php, request.php и router.php переадресовывает на нужный контроллер, исходя 
из URL.

Для реализации MVC паттерна я использую Ubuntu 18.04.1 LTS и сервер nginx 
со следующими настройками, распологающимися по адресу 
` /etc/nginx/sites-available/origincalc.com `:

```bash
server {
        listen 80;
        listen [::]:80;
        root /var/www/origincalc.com;
        index index.php index.html index.htm index.nginx-debian.html;

        server_name origincalc.com;

        location / {
               add_header 'Access-Control-Allow-Origin' *;
               try_files $uri $uri/ /index.php$is_args$args;
        }

        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/var/run/php/php7.2-fpm.sock;
        }

        location ~ /\.ht {
                deny all;
        }
}
```
Для активации данного виртуального хоста нужно создать символьную ссылку из этого файла в каталог 
`sites-enabled`. Он читается web-сервером nginx во время запуска. Для этого выполняю в 
командной строке команду:
```bash
sudo ln -s /etc/nginx/sites-available/origincalc.com /etc/nginx/sites-enabled/
```
Также вношу следующую строку в файл ```/etc/hosts```:
```bash
127.0.0.1       origincalc.com
```
Перед запуском проекта удостоверяюсь в правильности синтаксиса и перезапускаю nginx для обновления
настроек соответственно следующими командами:
```bash
sudo nginx -t
sudo service nginx restart
```
Для доступа к сайту нужно переходить по ссылке [http://origincalc.com/v/](http://origincalc.com/v/).

Чтобы перейти к калькулятору, нужно ввести комбинацию `admin/admin` в форме авторизации. 

При входе на сайт в базу данных заносится строка с информацией о дате посещения, ip-адресе 
посетителя, URI посещения и уникальные для каждого нового пользователя cookie. В корне проекта 
располагается дамп используемой базы данных `calc_dump.sql`. Параметры входа в базу данных 
находятся в файле `/Config/config.php` в массиве `$database`. 

В зависимости от языка вашего браузера, выбирается нужный файл `/Config/lang.en.php` или
`/Config/lang.ru.php` и сайт переводится на нужный язык. Если браузер отличается от представленных
языков, то по умолчанию выбирается русский язык текста.

На странице калькулятора при нажатии на `Рассчитать`, результаты появляются ниже на этой же
 странице без перезагрузки.
