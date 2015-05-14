#!/bin/bash
# https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-centos-7 
yum install -y epel-release
sudo yum install -y nginx
systemctl start nginx.service
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
systemctl enable nginx.service > /dev/null 2>&1
