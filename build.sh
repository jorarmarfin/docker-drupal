docker build -t jorarmarfin/drupal:tmp .
docker build -t jorarmarfin/drupal:8.7.5 .

docker run --name srv-drupal-apache -d jorarmarfin/drupal:8.7.5