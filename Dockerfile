FROM jorarmarfin/apache-php:7.2

ENV DB_HOST=srv-drupal-mysql
ENV DB_DATABASE=drupal
ENV DB_USER=root
ENV DB_PASS=root

RUN apt-get install wget -y

ADD drupal.tgz /root
ADD drupal.sh /