#!/bin/bash
# http://www.unixmen.com/install-mongodb-centos-7/

cat << EOF > /etc/yum.repos.d/mongodb.repo
[mongodb]
name=MongoDB repo
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1
EOF

yum install -y mongodb-org 

chkconfig  mongod  on

service   mongod start
