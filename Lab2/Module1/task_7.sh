#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

yum update -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd
echo "Hello World from Panchenko!" > /var/www/html/index.html
