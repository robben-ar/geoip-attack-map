#!/bin/bash
# IP of Proxy Squid: 192.168.100.5

stdbuf -o0 inotail -f /var/log/syslog | awk -v date="$(date +"%r")" -F"," '{ print "Aug" " " "15" " " date "seguridad-siem" " " "attack-map-sample:" " " $20 ","$19","$22","$21",ATTACK-VAR,CVE-VAR"}' | grep --line-buffered -v ",,,\|127.0.0.1,127.0.0.1,\|192.168.100.5\|pfsync\|datalength\|none\|request" >>/var/log/syslog/squid3/logs.log
