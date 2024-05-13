FROM php:8.2-fpm-alpine

COPY --from=composer:2.7 /usr/bin/composer /usr/local/bin/composer

RUN apk --no-cache add libpq-dev \
    && docker-php-ext-install pdo_pgsql
