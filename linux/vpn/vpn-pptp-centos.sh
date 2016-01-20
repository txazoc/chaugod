#!/bin/bash
#
# author: chaugod
# function: auto install pptp vpn
# support: centos 6.5

# config
msdns1="8.8.8.8"
msdns2="8.8.4.4"
user="txazo"
passwd="txazovpn1218"
publicip="47.88.11.52"
color="\033[40;36m"

# install ppp iptables pptpd
echo -e "${color}Install ppp iptables pptpd${color}"
yum install -y ppp iptables pptpd
chkconfig pptpd on
chkconfig iptables on

# config /etc/pptpd.conf
echo -e "${color}\nConfig /etc/pptpd.conf${color}"
sed -i '0,/^#localip/s//localip/' /etc/pptpd.conf
sed -i '0,/^#remoteip/s//remoteip/' /etc/pptpd.conf

# config /etc/ppp/options.pptpd
echo -e "${color}\nConfig /etc/ppp/options.pptpd${color}"
sed -i "0,/^#ms-dns .*/s//ms-dns $msdns1/" /etc/ppp/options.pptpd
sed -i "0,/^#ms-dns .*/s//ms-dns $msdns2/" /etc/ppp/options.pptpd

# config /etc/ppp/chap-secrets
echo -e "${color}\nConfig /etc/ppp/chap-secrets${color}"
sed -i "/$/a $user pptpd $passwd *" /etc/ppp/chap-secrets

# config /etc/sysctl.conf
echo -e "${color}\nConfig /etc/sysctl.conf${color}"
sed -i '/^net.ipv4.ip_forward.*/s//net.ipv4.ip_forward = 1/' /etc/sysctl.conf
sysctl -p

echo -e "${color}\nAdd iptables routing${color}"
iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -j SNAT --to-source ${publicip}

echo -e "${color}\nRestart iptables${color}"
/etc/init.d/iptables save
/etc/init.d/iptables restart

echo -e "${color}\nRestart pptpd${color}"
/etc/init.d/pptpd restart

echo -e "${color}\nInstall success!\n${color}"