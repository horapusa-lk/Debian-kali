#!/bin/bash

RD='\e[1;31m'
GR='\e[1;32m'
YL='\e[1;33m'
BL='\e[1;34m'
PP='\e[1;35m'
LBL='\e[1;36m'
GY='\e[1;30m'
WH='\e[1;37m'

clear
pkg update -y
pkg install ruby -y
pkg install figlet -y
gem install lolcat

clear
figlet Kali Linux | lolcat
echo
echo -e $GR "Tool From Hora Pusa"

echo
echo -e $RD "You may use this tool at your own risk. The developers at Zyntax™ do not hold any responsibility"
sleep 2
echo
echo -e $GR "Press Enter to continue.."
read
clear
echo -e $YL "[#] Creating the platform for the rooting process"

#install req
apt install wget -y
apt install git -y
pkg install ruby -y
pkg install figlet -y
gem install lolcat
pkg install proot-distro -y




#update
pkg update -y
pkg upgrade -y


#install Debain
proot-distro install debian

#add to startup
wget https://raw.githubusercontent.com/Horapusaa/Debian-kali/main/root.txt
cat "root.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

#login to Debian
proot-distro login debian
