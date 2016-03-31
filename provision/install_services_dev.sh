#!/usr/bin/env bash

# Disable Nginx sendfile; it has issues when in a virtual vagrant environment
sudo sed -i 's/sendfile on/sendfile off/g' /etc/nginx/nginx.conf

# Install MySQL Server
sudo echo "mysql-server-5.5 mysql-server/root_password password password" | sudo debconf-set-selections
sudo echo "mysql-server-5.5 mysql-server/root_password_again password password" | sudo debconf-set-selections
sudo apt-get install -y mysql-server-5.5
mysqladmin -u root -ppassword password ''

sudo echo "[mysqld]" >> /etc/mysql/conf.d/my.cnf
sudo echo "sql_mode=STRICT_TRANS_TABLES" >> /etc/mysql/conf.d/my.cnf
