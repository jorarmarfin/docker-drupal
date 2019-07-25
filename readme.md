# Docker Drupal

* Docker preparado para levantar drupal

## Iniciar drupal
* Moodle ha sido instalado y retirado de la carpeta www para que no se pierda al desplegar un volumen hay una copia en /root/
* para iniciar moodle ejecutar docker exec -it srv-drupal-apache /drupal.sh init

## Credenciales
* user: admin
* pass: Drupal2019@

## Optimizer mysql
* ejecutar este comando en la carpeta config de su mysql
* wget https://raw.githubusercontent.com/jorarmarfin/docker-mysql/master/myconfig.cnf

## Modulos instalados
* admin_toolbar
* module_filter
* pathauto
* token
* ctools
* recaptcha
* smtp
* fontawesome
* backup_migrate
* restui

## Variables de entorno
* DB_HOST=srv-drupal-mysql
* DB_DATABASE=drupal
* DB_USER=root
* DB_PASS=root