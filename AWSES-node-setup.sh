#!/bin/bash

# Script used to set up a new node inside an Elasticsearch cluster in AWS
#sudo yum update -y

# Java 8 Installation
sudo yum install java-1.8.0-openjdk.x86_64

# Elasticsearch Installation
rpm -i https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.0.0-x86_64.rpm

echo ES_JAVA_OPTS="\"-Xms1g -Xmx1g\"" >> /etc/sysconfig/elasticsearch
echo MAX_LOCKED_MEMORY=unlimited >> /etc/sysconfig/elasticsearch

# Discovery EC2 plugin is used for the nodes to create the cluster in AWS
echo -e "y\n" | /usr/share/elasticsearch/bin/elasticsearch-plugin install discovery-ec2

# Shortest configuration for Elasticsearch nodes to find each other
echo "discovery.zen.hosts_provider: ec2" >> /etc/elasticsearch/elasticsearch.yml
echo "network.host: _ec2_" >> /etc/elasticsearch/elasticsearch.yml
echo "xpack.security.enabled: true" >> /etc/elasticsearch/elasticsearch.yml

sudo chkconfig --add elasticsearch

sudo service elasticsearch restart

echo "Node setup finished!" > ~/terraform.txt
