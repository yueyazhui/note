#!/bin/bash

echo "*********vhr service start begin*********"
cd /root/vhr
rm -rf consoleMsgVhr.log
rm -rf consoleMsgMail.log
touch consoleMsgVhr.log
touch consoleMsgMail.log
nohup java -jar vhr-web-0.0.1-SNAPSHOT.war > consoleMsgVhr.log 2>&1 &
nohup java -jar mail-server-0.0.1-SNAPSHOT.war > consoleMsgMail.log 2>&1 &
echo "*********vhr service start end*********"