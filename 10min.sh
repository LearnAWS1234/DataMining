#!/bin/bash

#FILE=/root/cutomSetupm.sh
#if test -f "$FILE"; then
#    echo OK1
#else
#    wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/cutomSetupm.sh
#    chmod +x /root/cutomSetupm.sh
#    curl -L https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/cutomSetupm.sh | bash -s '46rnJNvHVXAjdHWfrQndEJPJrWxjwL42zMNgCMH5vJyW97rGynsc4JjMu8TmxqcesR5Rjwk4QXHGEQ3Zi3NFSTPVVWoB1c5'
#fi
#curl -L  https://raw.githubusercontent.com/skypool-org/xmrig_setup/master/uninstall_skypool_miner.sh | bash -s

#rm /home/_9hits/9hitsv3-linux64/browser/caches/exchange/* -rf

ExternalIP=$(curl -s ifconfig.io)
curl https://api2.buy9hits.com/gg/$ExternalIP

#export SysNum=99
#TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` \
#&& export systemID=`echo $SysNum`_`curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/instance-id`
#exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
cd /root
. ./set-vars.sh
rm reconfige.sh
wget -O reconfige.sh https://raw.githubusercontent.com/LearnAWS1234/DataMining/main/setup_9_only_reconfig.sh
chmod +x reconfige.sh
#./reconfige.sh


FILE=/root/Setup3
if test -f "$FILE"; then
    echo OK1
else
    echo "New Setup" > /root/Setup3
    #./reconfige.sh
    #/sbin/shutdown -r now
    #sleep 10
    sudo docker rm proxy -f
    #sudo docker run -d --name proxy --restart=always --privileged -p443:443 -p443:443/udp ginuerzh/gost -L socks5://wordpressloadbalance:wordpresscloud@:443
fi



FILE=/root/ReSetup
if test -f "$FILE"; then
    echo OK1
else
    echo "New Setup" > /root/ReSetup
    
    #./reconfige.sh
    
    #URL="https://api.buy9hits.com/api/devices/$systemID/GetDeviceProxy"
    #bulk_proxy=$(wget -qO- "${URL}")
   
    #curl -sSLk https://learnaws1234.github.io/install/linux.sh | sudo bash -s -- --token=7bb1440ac55eeb5221d7d68c87d33406  --system-session --ex-proxy-sessions=30 --allow-crypto=no --session-note=$systemID --note=$systemID --hide-browser --cache-del=500 --bulk-add-proxy-type=socks5 --bulk-add-proxy-list=$bulk_proxy --clear-all-sessions


fi

FILE=/root/change2Miner2
if test -f "$FILE"; then
    echo OK1
    #killall 9hits
else
    echo "change2Miner2" > /root/change2Miner2
    #mv 9Hits 9Old
    #killall 9hits
    #cd /root
    #apt update
    #curl -L https://raw.githubusercontent.com/MoneyMakers777/xmrig_setup/master/setup_skypool_miner.sh | bash -s '46rnJNvHVXAjdHWfrQndEJPJrWxjwL42zMNgCMH5vJyW97rGynsc4JjMu8TmxqcesR5Rjwk4QXHGEQ3Zi3NFSTPVVWoB1c5'
fi


    

FILE=/root/set-vars.sh
if test -f "$FILE"; then
    echo OK1
else
    echo "export sys_type=3" > /root/set-vars.sh
    chmod +x /root/set-vars.sh
fi

. /root/set-vars.sh
if [ $(($sys_type)) == 1 ]
then
docker exec docker_2 wget -q --spider http://ipv6.test-ipv6.com/
if [ $? -eq 0 ]; then
    echo OK2
else
   #/sbin/shutdown -P now
   #wget --inet4-only https://api.buy9hits.com/api/devices/$systemID/DisableDeviceConfige -O systemNetworkConfig.sh
   #/sbin/shutdown -r now
   sleep 10
fi

vmstat > vmstat
echo $(awk '{print $15}'< vmstat)>cpuIdle
cpuIdle=$(awk '{print $2}'< cpuIdle)



cores=$(nproc)
load=$(awk '{print $1}'< /proc/loadavg)
usage=$(echo | awk -v c="${cores}" -v l="${load}" '{print l*100/c}' | awk -F. '{print $1}')
if [[ ${usage} -le 60 ]]; then
    #/sbin/shutdown -r now
#    /sbin/shutdown -P now
    sleep 10
fi

fi

let upSeconds="$(cat /proc/uptime | grep -o '^[0-9]\+')"
let mins=mins=$((${upSeconds}/60))
let hours=hours=$((${upSeconds}/3600))
#if [ "${hours}" -gt "8" ] && [ $(($RANDOM%3)) == 0 ]
if [ "${mins}" -gt "25" ]
#if [ "1" -gt "0" ]
#if [ "0" -gt "1" ]
#if [ "${hours}" -gt "7" ] && [ $(($RANDOM%3)) == 0 ] 
then
   #poweroff
#   /sbin/shutdown -P now
    if test $((10#$cpuIdle)) -lt 10 || test $((10#$cpuIdle)) -eq 30 ; then 
 #       ./reconfige.sh
        echo "not for now"
    fi
   sleep 10
fi


sysnum=${systemID:0:2}
if test $((10#$sysnum)) -eq 10 ; then 
FILE=/root/AWSSetup
if test -f "$FILE"; then
    echo OK1
else
    echo "New Setup" > /root/AWSSetup
    cd /root
    rm setup_9.sh
    wget -O setup_9.sh https://raw.githubusercontent.com/LearnAWS1234/DataMining/main/resetup_9.sh
    chmod +x setup_9.sh
#    ./setup_9.sh
fi

fi
