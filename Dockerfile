FROM php:7.3-apache 
RUN apt-get update && docker-php-ext-install mysqli
EXPOSE 8080

