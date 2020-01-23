FROM php:7.3-apache 
RUN apt-get update && docker-php-ext-install mysqli
COPY ./index.php /var/www/html/index.php
COPY ./param.php /var/www/html/param.php
EXPOSE 8080

