FROM php:7.4-apache
WORKDIR /app
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
	&& apt-get update \
	&& apt-get install -y \
	        libzip-dev \
        	zip \
	&& docker-php-ext-install zip \
	&& composer global require laravel/installer
