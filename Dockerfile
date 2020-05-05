FROM php:7.4

# Update packages
RUN apt-get update \
    && apt install -yqq gnupg \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt update \
    && apt install -yqq g++ git libbz2-dev libcurl4-openssl-dev libicu-dev libpng-dev libpq-dev libxml2-dev \
        nodejs shellcheck unzip zlib1g-dev \
    && docker-php-ext-install mbstring pdo_mysql pdo_pgsql curl json intl gd xml zip bz2 opcache bcmath pcntl \
    && apt upgrade -yqq \
    && apt autoremove \
    && apt clean \
    && curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
