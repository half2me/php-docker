FROM ubuntu:16.10
MAINTAINER Benjamin Tamasi <h@lfto.me>
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y sqlite mysql-server php php-intl php-mbstring php-xdebug php-pdo-sqlite php-pdo-mysql
