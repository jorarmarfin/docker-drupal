docker build -t jorarmarfin/drupal:tmp .
docker build -t jorarmarfin/drupal:3.7 .

docker run --name srv-drupal-apache -d jorarmarfin/drupal:3.7 