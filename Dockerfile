FROM ubuntu:16.04

RUN apt-get update &&  apt-get install -y software-properties-common software-properties-common
RUN LANG=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update

RUN apt-get install -y mysql-client wget \
    pwgen python-setuptools curl php7.2 php7.2-cli php7.2-common php7.2-dev php7.2-fpm php7.2-mysql php7.2-curl php7.2-gd php7.2-intl php-imagick php7.2-imap php-memcache php7.2-pspell php7.2-recode php7.2-sqlite3 php7.2-tidy php7.2-xmlrpc php7.2-xsl

#ver-2
#RUN mv /etc/php/7.1/fpm/pool.d/www.conf /etc/php/7.1/fpm/pool.d/www.conf_ORG
#COPY ./www.conf /etc/php/7.1/fpm/pool.d/


COPY ./start.sh /
CMD ["/bin/bash","/start.sh"]

