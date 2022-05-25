#!/bin/bash

echo "*********vhr service stop begin*********"
cd /root/vhr
netstat -nlp | grep 9999
netstat -nlp | grep 9998
echo "*********vhr service stop end*********"