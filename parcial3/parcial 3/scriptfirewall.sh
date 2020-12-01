#!/bin/bash

#Update
sudo yum install -y vim

service NetworkManager stop

chkconfig NetworkManager off

service firewalld start

firewall-cmd --zone=dmz --list-all

sudo firewall-cmd --set-default-zone=dmz

firewall-cmd --zone=dmz --remove-interface=eth2

firewall-cmd --zone=dmz --remove-interface=eth0

sudo firewall-cmd --zone=dmz --add-interface=eth1 --permanent

sudo firewall-cmd --zone=internal --add-interface=eth2 --permanent

firewall-cmd --zone=dmz --add-service=http --permanent

firewall-cmd --zone=dmz --add-service=https --permanent

firewall-cmd --zone=internal --add-service=http --permanent

firewall-cmd --zone=internal --add-service=https --permanent

firewall-cmd --reload


firewall-cmd --zone=dmz --add-masquerade  --permanent

firewall-cmd --zone=internal --add-masquerade --permanent

firewall-cmd --zone="dmz" --add-forward-port=port=443:proto=tcp:toport=443:toaddr=192.168.50.11 --permanent

firewall-cmd --zone="dmz" --add-forward-port=port=80:proto=tcp:toport=80:toaddr=192.168.50.11 --permanent

firewall-cmd --zone="dmz" --add-forward-port=port=8080:proto=tcp:toport=8080:toaddr=192.168.50.11 --permanent


firewall-cmd --reload

service firewalld start

chkconfig NetworkManager on

