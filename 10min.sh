#!/bin/bash
#cores=$(nproc)
#load=$(awk '{print $1}'< /proc/loadavg)
#usage=$(echo | awk -v c="${cores}" -v l="${load}" '{print l*100/c}' | awk -F. '{print $1}')
#if [[ ${usage} -le 60 ]]; then
#    /sbin/shutdown -r now
#fi

docker exec docker_2 wget -q --spider http://ipv6.test-ipv6.com/
if [ $? -eq 0 ]; then
    echo OK
else
   /sbin/shutdown -P now
fi


let upSeconds="$(cat /proc/uptime | grep -o '^[0-9]\+')"
let hours=hours=$((${upSeconds}/3600))
#if [ "${hours}" -gt "8" ] && [ $(($RANDOM%3)) == 0 ]
if [ "${hours}" -gt "7" ] && [ $(($RANDOM%3)) == 0 ]
#if [ "${hours}" -gt "0" ] 
then
   #poweroff
   /sbin/shutdown -P now
fi
