#!/bin/bash

# http://lists.centos.org/pipermail/centos-devel/2014-July/011391.html
yum install deltarpm -y

# devel tools
yum group install -y "Development Tools"

# add ifconfig to the min install
# http://www.unixmen.com/ifconfig-command-found-centos-7-minimal-installation-quick-tip-fix/
yum install -y net-tools


# update the system
yum -y update
