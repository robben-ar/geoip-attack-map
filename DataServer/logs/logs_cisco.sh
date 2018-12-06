#!/bin/bash
#IP cisco fw: 172.16.100.1

nohup stdbuf -o0 inotail -f /var/log/syslog/%ASA-6-302014.log | sed 's/[/:]/ /g' | awk -F" " '{print $1" "$2" "$3":"$4":"$5" seguridad-siem attack-map-sample "$18","$14","$19","$15",ATTACK-VAR,CVE-VAR"}' | grep --line-buffered -v "172.16....\|8080"  >>/var/log/syslog/cisco/cisco.log &
