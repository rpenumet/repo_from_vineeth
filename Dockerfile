FROM php:7.0-apache
RUN docker-php-ext-install mysqli
# # Install composer
# RUN apt-get update -y
# RUN apt-get install zip unzip -y
# RUN curl -sS https://getcomposer.org/installer | php \
#     && mv composer.phar /usr/bin/composer
    
# RUN composer require aws/aws-sdk-php
COPY index.php /var/www/html
EXPOSE 80
