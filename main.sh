
#update
pkg update -y
pkg upgrade -y

#install req
apt install wget -y
apt install git -y
pkg install ruby -y
pkg install figlet -y
gem install lolcat -y
pkg install proot-distro -y

#install Debain
proot-distro install ubuntu

#add to startup
cat "root.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

#login to Debian
proot-distro login debian