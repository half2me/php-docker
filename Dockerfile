FROM ubuntu:16.10
MAINTAINER Benjamin Tamasi <h@lfto.me>
RUN apt-get update && apt-get dist-upgrade -y
RUN { \
        echo mysql-server mysql-server/root_password password ''; \
        echo mysql-server mysql-server/root_password_again password ''; \
    } | debconf-set-selections && apt-get install -y \
sqlite mysql-server php php-intl php-mbstring php-xdebug php-pdo-sqlite php-pdo-mysql
