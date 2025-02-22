#!/bin/bash -xe

. /root/set-vars.sh

vmstat > vmstat
echo $(awk '{print $15}'< vmstat)>cpuIdle
cpuIdle=$(awk '{print $2}'< cpuIdle)

if test $((10#$cpuIdle)) -lt 10 || test $((10#$cpuIdle)) -gt 30 ; then 

   sessionsCount=$(awk "BEGIN {printf \"%d\",${sessionsCount}/(100-${cpuIdle})*70}")
   
   if [ "${sessionsCount}" -gt "19" ]
   then
      export sessionsCount=19
   fi

fi

export sessionsCount=35

echo "export sys_type=0
export sessionsCount=$sessionsCount
export systemID=$systemID" > /root/set-vars.sh


rm root/repeatab* -rf
echo "cd /root
rm 10m* -rf
wget --inet4-only https://raw.githubusercontent.com/LearnAWS1234/DataMining/main/10min.sh
chmod +x 10min.sh
./10min.sh" > /root/repeatableCMD.sh
chmod +x /root/repeatableCMD.sh
#crontab -l | { cat; echo "*/15 * * * * /root/repeatableCMD.sh"; } | crontab -
#crontab -l | { cat; echo "* * * * * rm /home/_9hits/9hitsv3-linux64/browser/core.* -f"; } | crontab -

case=0
sysnum=${systemID:0:2}
if test $((10#$sysnum)) -eq 8 || test $((10#$sysnum)) -eq 14 ; then 
case=0
elif test $((10#$sysnum)) -lt 15 ; then 
case=0
else
case=0
fi

#case=$(($RANDOM%2))
if [ $case == 0 ]
then
   #noproxy
echo "export sys_type=0
export sessionsCount=$sessionsCount
export systemID=$systemID" > /root/set-vars.sh
   need_docker=0
elif [ $case == 1 ]
then
   #20
echo "export sys_type=1
export systemID=$systemID" > /root/set-vars.sh
   need_docker=1
elif [ $case == 2 ]
then
   #docker15
echo "export sys_type=2
export systemID=$systemID" > /root/set-vars.sh   
   need_docker=1
elif [ $case == 3 ]
then
   #AI
   need_docker=1
else
   #40
   need_docker=1
fi
chmod +x /root/set-vars.sh
/root/set-vars.sh



#wget --inet4-only http://get.docker.com -O /root/installdocker.sh
#chmod +x /root/installdocker.sh
#/root/installdocker.sh
if [ $need_docker == 1 ]
then
echo "export systemID=$systemID
cd /root
rm AfterSystemRestartScript.sh
wget --inet4-only https://raw.githubusercontent.com/LearnAWS1234/DataMining/main/AfterSystemRestartScript.sh
chmod +x AfterSystemRestartScript.sh
./AfterSystemRestartScript.sh" > /root/initializeSystem.sh
chmod +x /root/initializeSystem.sh


apt install net-tools -f

wget --inet4-only http://get.docker.com -O /root/installdocker.sh
chmod +x /root/installdocker.sh
/root/installdocker.sh
mkdir /root/3proxyvol
mkdir /root/3proxyvol/cfg
fi

#apt-get update -qq >/dev/null
#apt install icewm -y
#yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/Buy9hitsDOTcom/9Hits-AutoInstall.git --branch 2-4-5 && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/"
#yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
#yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
if [ $case == 0 ]
then
   echo "OK"
   #noproxy
   #yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "30" "6" "1" "0" "$systemID" "" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
   #yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "http://proxy.9hits.com/pool/8b1b80597712173959bd35d61c4bb182" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
   #yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
   #sudo snap remove amazon-ssm-agent
   
   #curl -sSLk https://learnaws1234.github.io/install/run_with_new_config.sh | sudo -u _9hits bash -s -- --token=7bb1440ac55eeb5221d7d68c87d33406  --system-session --ex-proxy-sessions=50 --clear-all-sessions --allow-crypto=no --session-note=$systemID --note=$systemID --hide-browser --cache-del=500 --ex-proxy-url=http://proxy.9hits.com/pool/de5018b34418ce4074104d1a0629ff2f
   #curl -sSLk https://learnaws1234.github.io/install/run_with_new_config.sh| sudo -u _9hits bash -s -- --token=7bb1440ac55eeb5221d7d68c87d33406   --system-session --allow-crypto=no --allow-popups=no --session-note=${systemID:0:2} --note=$systemID --hide-browser --cache-del=500 --ex-proxy-url=http://proxy.9hits.com/pool/de5018b34418ce4074104d1a0629ff2f --ex-proxy-sessions=4 --clear-all-sessions
elif [ $case == 1 ]
then
   #50
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "30" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
   sudo snap remove amazon-ssm-agent
elif [ $case == 2 ]
then
   #60
   echo "OK"
   #yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "60" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
elif [ $case == 3 ]
then
   #AI
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "60" "6" "1" "1" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
else
   #40
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "50" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
fi

#crontab -l | { cat; echo "*/10 * * * * /root/repeatableCMD.sh"; } | crontab -
if [ $need_docker == 1 ]
then
crontab -l | { cat; echo "@reboot /root/initializeSystem.sh"; } | crontab -
/root/initializeSystem.sh
fi




#curl -sSLk https://learnaws1234.github.io/install/run_with_new_config.sh| sudo -u _9hits bash -s -- --token=7bb1440ac55eeb5221d7d68c87d33406   --system-session --allow-crypto=no --allow-popups=no --session-note=$systemID --note=${systemID:0:2} --hide-browser --cache-del=500 --ex-proxy-url=http://proxy.9hits.com/pool/dc60621a360be216e3143fd69bbbcf03 --ex-proxy-sessions=$sessionsCount --clear-all-sessions
curl -sSLk https://learnaws1234.github.io/install/run_with_new_config.sh| sudo -u _9hits bash -s -- --token=7bb1440ac55eeb5221d7d68c87d33406   --system-session --allow-crypto=no --allow-popups=no --session-note=$systemID --note=${systemID:0:2} --hide-browser --cache-del=500 --ex-proxy-sessions=$sessionsCount --clear-all-sessions


#/sbin/shutdown -r now
#    /sbin/shutdown -P now
#sleep 10



