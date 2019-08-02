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
* mailsystem
* mimemail
* webform
* empty_page
* link_attributes
* back_to_top

## Variables de entorno
* DB_HOST=srv-drupal-mysql
* DB_DATABASE=drupal
* DB_USER=root
* DB_PASS=root

## Configuraciones
- Tiene carpeta de archivos privados instalado /site/default/private

## comandos Drush
* drush user-password USERNAME –password=”PASSWORD”
* drush php-eval ‘db_query(“DELETE FROM `flood`”);’ Desbloquea intentos fallidos

## Docker-compose
~~~~
version: '3'
services:
  apache:
    container_name: srv-drupal-apache
    image:  jorarmarfin/drupal:8.7.5
    volumes:
      - ./apache/www:/var/www
      - ./apache/backup:/backup
    ports:
      - 9005:80
    networks:
      - net_drupal
  db:
    container_name: srv-drupal-mysql
    image:  jorarmarfin/mysql:5.7-drupal875
    environment:
      - MYSQL_ROOT_PASSWORD=root
    volumes:
      - ./mysql/data:/var/lib/mysql
      - ./mysql/conf:/etc/mysql/conf.d
      - ./mysql/backup:/backup
    networks:
      - net_drupal
networks:
  net_drupal:
~~~~