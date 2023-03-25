#!/bin/bash

echo 'Updating system...'
apt-get update
apt-get upgrade -y

echo 'Installing apache2...'
apt-get install apache2 unzip -y

echo 'Downloading and installing web files...'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/

echo 'Web server installed successfully!'