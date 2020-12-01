#!/bin/bash

#Update

sudo -i
yum install -y wget
yum install -y vim
yum install epel-release -y

# Instalar Streama

yum -y update

wget --no-cookies --no-check-certificate --header "Cookie:oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"

yum -y localinstall jdk-8u131-linux-x64.rpm

java -version

wget https://github.com/dularion/streama/releases/download/v1.1/streama-1.1.war

mkdir /opt/streama

mv streama-1.1.war /opt/streama/streama.war

#java -jar /opt/streama/streama.war

mkdir /opt/streama/media
chmod 777 /opt/streama/media




