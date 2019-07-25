#!/bin/bash
if [ $1 = 'init' ]; then
cp -rf /root/drupal-8.7.5/* /var/www/
cp -rf /root/drupal-8.7.5/.* /var/www/
rm -rf /var/www/html
ln -s /var/www/web /var/www/html
chown -Rf  www-data:www-data /var/www/*
chmod 0775 -Rf /var/www/*
echo 'Drupal Desplegado'
fi