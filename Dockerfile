FROM ubuntu:16.10
MAINTAINER Benjamin Tamasi <h@lfto.me>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y \
        curl \
        wget \
        git \
        sqlite \
        mysql-server \
        php \
        php-intl \
        php-mcrypt \
        php-gd \
        php-mbstring \
        php-xdebug \
        php-pdo-sqlite \
        php-pdo-mysql
RUN rm -rf /var/lib/apt/lists/*

# Get composer
RUN wget -O /usr/local/bin/composer https://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer
