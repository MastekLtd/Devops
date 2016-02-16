#!/bin/bash
installablesDirectory=$1

if [ -f "$installablesDirectory/misc/sysvinit-tools-2.88-14.dsf.el7.x86_64.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/sysvinit-tools-2.88-14.dsf.el7.x86_64.rpm;
fi

if [ -f "$installablesDirectory/misc/libmnl-1.0.3-7.el7.x86_64.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/libmnl-1.0.3-7.el7.x86_64.rpm;
fi

if [ -f "$installablesDirectory/misc/libnfnetlink-1.0.1-4.el7.x86_64.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/libnfnetlink-1.0.1-4.el7.x86_64.rpm;
fi

if [ -f "$installablesDirectory/misc/libnetfilter_conntrack-1.0.4-2.el7.x86_64.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/libnetfilter_conntrack-1.0.4-2.el7.x86_64.rpm;
fi

if [ -f "$installablesDirectory/misc/iptables-1.4.21-16.el7.x86_64.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/iptables-1.4.21-16.el7.x86_64.rpm;
fi

if [ -f "$installablesDirectory/misc/iproute-3.10.0-54.el7.x86_64.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/iproute-3.10.0-54.el7.x86_64.rpm;
fi

if [ -f "$installablesDirectory/misc/initscripts-9.49.30-1.el7.x86_64.rpm" ]; then
	yum install -y $installablesDirectory/misc/initscripts-9.49.30-1.el7.x86_64.rpm;
else
	yum install -y initscripts;
fi

if [ -f "$installablesDirectory/misc/telnet-0.17-59.el7.x86_64.rpm" ]; then
	yum install -y $installablesDirectory/misc/telnet-0.17-59.el7.x86_64.rpm;
else
	yum install -y telnet;
fi

if [ -f "$installablesDirectory/misc/wget-1.14-10.el7.x86_64.rpm" ]; then
	yum install -y $installablesDirectory/misc/wget-1.14-10.el7.x86_64.rpm
else
	yum install -y wget
fi

if [ -f "$installablesDirectory/misc/tar-1.26-29.el7.x86_64.rpm" ]; then
	yum install -y $installablesDirectory/misc/tar-1.26-29.el7.x86_64.rpm
else
	yum install -y tar
fi

if [ -f "$installablesDirectory/jdk/jdk-8u45-linux-x64.rpm" ]; then
	yum install -y $installablesDirectory/jdk/jdk-8u45-linux-x64.rpm
else
	wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm";
	rpm -Uvh jdk-8u45-linux-x64.rpm;
fi

if [ -f "$installablesDirectory/misc/passwd-0.79-4.el7.x86_64.rpm" ]; then
	yum install -y $installablesDirectory/misc/passwd-0.79-4.el7.x86_64.rpm
else
	yum install -y passwd
fi

if [ -f "$installablesDirectory/misc/python-backports-1.0-8.el7.x86_64.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/python-backports-1.0-8.el7.x86_64.rpm
fi

if [ -f "$installablesDirectory/misc/python-backports-ssl_match_hostname-3.4.0.2-4.el7.noarch.rpm" ]; then
	yum install -y --skip-broken $installablesDirectory/misc/python-backports-ssl_match_hostname-3.4.0.2-4.el7.noarch.rpm
fi

if [ -f "$installablesDirectory/misc/python-setuptools-0.9.8-4.el7.noarch.rpm" ]; then
	yum install -y $installablesDirectory/misc/python-setuptools-0.9.8-4.el7.noarch.rpm
else
	yum install -y python-setuptools
fi

exit