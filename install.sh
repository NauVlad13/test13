#!/bin/bash

yum update -y
yum install mc -y
yum install epel-release -y
yum install nginx -y
yum install httpd -y
yum install mariadb-server mariadb -y
yum install php php-mysql -y
yum -y install php-mysql php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl curl-devel
yum install wget -y
yum -y install automake php-devel libtool openssl-devel gcc php-mysql php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlprc gcc php-devel php-pear php-common php-mbstring
