FROM php:7.4

# Update packages
RUN apt-get update \
    && apt-get install -yqq gnupg \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get update \
    && apt-get install -yqq g++ git libbz2-dev libcurl4-openssl-dev libicu-dev libpng-dev libpq-dev libxml2-dev \
        nodejs postgresql postgresql-client postgresql-contrib shellcheck unzip zlib1g-dev libzip-dev \
    && docker-php-ext-install pdo_mysql pdo_pgsql intl gd zip bz2 opcache bcmath pcntl \
    && pecl install -o -f redis \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis \
    && apt-get upgrade -yqq \
    && apt-get autoremove \
    && apt-get clean \
    && curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
