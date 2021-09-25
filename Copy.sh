#!/bin/bash

cp nginx.conf /etc/nginx/nginx.conf
cp nginx.conf.default /etc/nginx/nginx.conf.default
cp default.conf /etc/nginx/conf.d/default.conf
cp upstream.conf /etc/nginx/conf.d/upstream.conf
cp -R test8081 /var/www/test8081
cp -R test8082 /var/www/test8082
cp -R test8083 /var/www/test8083
cp httpd.conf /etc/httpd/conf/httpd.conf
cp prometheus.service /etc/systemd/system/prometheus.service
cp alertmanager.service /etc/systemd/system/alertmanager.service
cp node_exporter.service /etc/systemd/system/node_exporter.service
