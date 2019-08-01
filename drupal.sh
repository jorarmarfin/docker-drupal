#!/bin/bash
if [ $1 = 'init' ]; then
cp -rf /root/drupal/* /var/www/
rm -rf /root/drupal

rm -rf /var/www/html
ln -s /var/www/web /var/www/html
chown -Rf  www-data:www-data /var/www/*
chmod 0775 -Rf /var/www/*
cd /var/www
drupal cr
# Drush
echo "alias drush='/var/www/vendor/bin/drush'">>/root/.profile;
source /root/.profile

echo 'Drupal Desplegado'
fi

