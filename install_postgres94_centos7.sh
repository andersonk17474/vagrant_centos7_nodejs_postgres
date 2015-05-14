#!/bin/bash
#http://www.liquidweb.com/kb/how-to-install-and-connect-to-postgresql-on-centos-7/
rpm -iUvhf http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/pgdg-redhat94-9.4-1.noarch.rpm
yum -y install postgresql94 postgresql94-server postgresql94-contrib postgresql94-libs --disablerepo=* --enablerepo=pgdg94
systemctl enable postgresql-9.4 > /dev/null 2>&1
/usr/pgsql-9.4/bin/postgresql94-setup initdb
systemctl start postgresql-9.4
