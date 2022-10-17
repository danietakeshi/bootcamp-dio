#!/bin/bash

echo "updating server"

apt-get update
apt-get upgrade -y

echo "installing apache"
apt-get install apache2 -y

echo "installing unzip"
apt-get install unzip -y

echo "Downloading files..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Unzipping..."
unzip main.zip

echo "Copying Files to Apache Server"
cd linux-site-dio-main
cp -R * /var/www/html/
