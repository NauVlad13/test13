#!/bin/bash

wget https://github.com/prometheus/prometheus/releases/download/v2.20.1/prometheus-2.20.1.linux-amd64.tar.gz
mkdir /etc/prometheus
mkdir /var/lib/prometheus
tar zxvf prometheus-*.linux-amd64.tar.gz
cd prometheus-*.linux-amd64
cp prometheus promtool /usr/local/bin/
cp -r console_libraries consoles prometheus.yml /etc/prometheus
useradd --no-create-home --shell /bin/false prometheus
chown -R prometheus:prometheus /etc/prometheus /var/lib/prometheus
chown prometheus:prometheus /usr/local/bin/{prometheus,promtool}
chown -R prometheus:prometheus /var/lib/prometheus
cd ..
wget https://github.com/prometheus/alertmanager/releases/download/v0.21.0/alertmanager-0.21.0.linux-amd64.tar.gz
mkdir /etc/alertmanager /var/lib/prometheus/alertmanager
tar zxvf alertmanager-*.linux-amd64.tar.gz
cd alertmanager-*.linux-amd64
cp alertmanager amtool /usr/local/bin/
cp alertmanager.yml /etc/alertmanager
useradd --no-create-home --shell /bin/false alertmanager
chown -R alertmanager:alertmanager /etc/alertmanager /var/lib/prometheus/alertmanager
chown alertmanager:alertmanager /usr/local/bin/{alertmanager,amtool}
cd ..
wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
tar zxvf node_exporter-*.linux-amd64.tar.gz
cd node_exporter-*.linux-amd64
cp node_exporter /usr/local/bin/
useradd --no-create-home --shell /bin/false nodeusr
chown -R nodeusr:nodeusr /usr/local/bin/node_exporter
