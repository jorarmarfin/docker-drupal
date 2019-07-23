FROM jorarmarfin/apache-php:7.2

RUN apt-get install wget -y

ADD drupal.tgz /root
ADD drupal.sh /