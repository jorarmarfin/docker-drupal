#!/bin/bash
if [ $1 = 'init' ]; then
cp -rf /root/drupal/* /var/www/
cp -rf /root/drupal/.editorconfig /var/www/.editorconfig
cp -rf /root/drupal/.env.example /var/www/.env.example
cp -rf /root/drupal/.gitattributes /var/www/.gitattributes
cp -rf /root/drupal/.gitignore /var/www/.gitignore

rm -rf /var/www/html
ln -s /var/www/web /var/www/html
chown -Rf  www-data:www-data /var/www/*
chmod 0775 -Rf /var/www/*
cd /var/www
drupal cr
echo 'Drupal Desplegado'
fi