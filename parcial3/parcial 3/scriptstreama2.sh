#!/bin/bash

cp /tmp/dato2.txt /etc/httpd/conf.d/streama.192.168.50.11.com.conf


systemctl restart httpd

setenforce 0

systemctl start streama

sudo yum install youtube-dl -y

cd /opt/streama/media

youtube-dl https://www.youtube.com/watch?v=VXmDhiWR60Y

youtube-dl https://www.youtube.com/watch?v=vsx_YQyd9co

