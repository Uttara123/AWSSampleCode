#!/bin/bash
yum update -y
yum install httpd -y
cd /var/www/html
aws s3 cp s3://uttara-website/index.html /var/www/html
service httpd start
aws s3 cp s3://uttara-website/healthcheck.html /var/www/html
chkconfig httpd

