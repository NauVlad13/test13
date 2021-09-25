#!/bin/bash

systemctl daemon-reload
systemctl enable prometheus
systemctl start prometheus
systemctl enable alertmanager
systemctl start alertmanager
systemctl enable node_exporter
systemctl start node_exporter
systemctl start mariadb
systemctl enable mariadb
systemctl start nginx
systemctl enable nginx
systemctl start httpd
systemctl enable httpd
