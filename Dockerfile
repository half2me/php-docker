FROM ubuntu:16.10
MAINTAINER Benjamin Tamasi <h@lfto.me>
RUN apt-get update && apt-get dist-upgrade -y
RUN { \
        echo mysql-community-server mysql-community-server/data-dir select ''; \
        echo mysql-community-server mysql-community-server/root-pass password ''; \
        echo mysql-community-server mysql-community-server/re-root-pass password ''; \
        echo mysql-community-server mysql-community-server/remove-test-db select false; \
    } | debconf-set-selections && apt-get install -y \
sqlite mysql-server php php-intl php-mbstring php-xdebug php-pdo-sqlite php-pdo-mysql
