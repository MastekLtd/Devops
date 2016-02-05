#!/bin/bash

INSTALL_DIR=/opt/omd

mkdir -p $INSTALL_DIR

cd $INSTALL_DIR

wget http://mathias-kettner.de/download/check_mk-agent-1.2.4p5-1.noarch.rpm

yum -y install check_mk-agent-1.2.4p5-1.noarch.rpm

chmod 777 /etc/xinetd.d

cp /mnt/gluster/repo/omd-setup/config/check_mk  /etc/xinetd.d/check_mk

service xinetd restart

exit