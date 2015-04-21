FROM eboraas/debian:sid
MAINTAINER Golfen Guo <golfen.guo@daocloud.io>

RUN apt-get update && apt-get -y install apache2 && apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

ADD . /var/www/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


