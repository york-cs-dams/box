#!/bin/bash

PASSWORD=root

echo "Installing MySQL"
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install --yes mysql-server
sudo mysqladmin -u root password $PASSWORD

echo "Configuring MySQL"
mysql -u root --password=$PASSWORD --execute="DROP USER ''@'localhost'"
mysql -u root --password=$PASSWORD --execute="DROP USER ''@'$(hostname)'"
mysql -u root --password=$PASSWORD --execute="DROP DATABASE test"
mysql -u root --password=$PASSWORD --execute="FLUSH PRIVILEGES"

echo "Creating databases"
mysql -u root --password=$PASSWORD --execute="CREATE DATABASE flippd"
