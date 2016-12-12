FROM ubuntu:16.10
MAINTAINER Benjamin Tamasi <h@lfto.me>
RUN debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
RUN debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y sqlite mysql-server php php-intl php-mbstring php-xdebug php-pdo-sqlite php-pdo-mysql
