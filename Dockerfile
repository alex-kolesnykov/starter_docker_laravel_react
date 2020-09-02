FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

# fix permissions issues
RUN deluser www-data && adduser -DH -h /home/www-data -s /sbin/nologin -u 1000 www-data
RUN chown -R www-data:www-data /usr/src
RUN chown -R www-data:www-data /var/www/html
USER www-data
