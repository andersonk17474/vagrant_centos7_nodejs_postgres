#!/bin/bash
# https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-centos-7 
yum install -y epel-release
sudo yum install -y nginx

# https://www.linode.com/docs/websites/nodejs/nodejs-nginx-debian
mkdir /etc/nginx/sites-available
mkdir /etc/nginx/sites-enabled
cp /vagrant/nginx_nodejs_site.conf /etc/nginx/sites-available/nodejs_site.com
cd /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/nodejs_site.com

#todo setup folder perms
# https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-on-centos-7


# start nginx 
systemctl start nginx.service
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
systemctl enable nginx.service > /dev/null 2>&1
