#!/usr/bin/env bash

#
# eg:
# > ./provision

# Add third party ppa repositories
sudo add-apt-repository ppa:ondrej/php5-5.6
sudo add-apt-repository ppa:nginx/stable
sudo apt-get update

# Install MySQL Client
sudo apt-get install -y mysql-client-5.5

# Install Nginx and PHP
sudo apt-get install nginx php5 php5-cli php5-json php5-curl php5-mcrypt php5-mysql php5-sqlite php5-gd php5-fpm -y
sudo php5enmod mcrypt pdo_mysql pdo_sqlite json curl gd

# Configure Nginx
sudo rm /etc/nginx/sites-enabled/default
sudo cp /root/provision/etc/nginx/nginx.conf /etc/nginx/nginx.conf
sudo rm /opt -R
sudo cp /root/provision/opt /opt -R

# Install Crontab
sudo crontab /root/provision/provision/crontab

# Install build tools
sudo wget -O /usr/local/bin/composer https://getcomposer.org/composer.phar
sudo chmod +x /usr/local/bin/composer
sudo apt-get install git -y

# Restart all services
sudo service php5-fpm restart && sudo service nginx restart
