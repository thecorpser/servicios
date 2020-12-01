#!/bin/bash


cp /tmp/dato1.txt /etc/systemd/system/streama.service

systemctl start streama
systemctl enable streama
systemctl status streama 


yum -y install httpd


# se inicia streama

systemctl stop streama.service

systemctl start streama.service

systemctl status streama.service

netstat -tlpn

service firewalld start

firewall-cmd --get-active-zones

firewall-cmd --zone=dmz --remove-interface=eth0 --permanent

firewall-cmd --zone=dmz --remove-interface=eth2 --permanent

sudo firewall-cmd --zone=dmz --add-interface=eth1 --permanen

firewall-cmd --set-default-zone=dmz

firewall-cmd --zone=dmz --add-rich-rule 'rule family="ipv4" source address=192.168.50.10 accept' --permanent

firewall-cmd --zone=dmz --add-icmp-block={echo-request,echo-reply,timestamp-reply,timestamp-request} --permanent

firewall-cmd --permanent --zone=dmz --add-service=http

firewall-cmd --permanent --zone=dmz --add-service=https

firewall-cmd --reload

service firewalld restart





















