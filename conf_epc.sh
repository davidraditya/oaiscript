#!/bin/sh
# Created by David Raditya Karissaputra | email: davidraditya.netic@yahoo.com

echo Configure EPC...
cd openair-cn/BUILD/EPC/



#Ask for new hostname $newhost
echo "Enter new hostname: "
read newhost

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts


echo Update all apps...
apt-get update

echo Create file hostname...
echo 'oai-pc' > /etc/hostname

echo Add oai-pc in hosts file...
sed -i '5i127.0.1.1		oai-pc.openair4G.eur oai-pc' /etc/hosts

echo Clone the eNB/UE source code...
git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git

echo Clone the EPC source code...
git clone https://gitlab.eurecom.fr/oai/openair-cn.git
cd openair-cn/

echo Swtich the branch...
git checkout v0.3.2
cd

echo Install Low Latency Kernel...
apt-get install linux-lowlatency-lts-vivid -y

echo Set cpu scaling...
apt-get install cpufrequtils
echo 'GOVERNOR="performance"' > /etc/default/cpufrequtils
update-rc.d ondemand disable

echo Remove unused kernel...
dpkg --get-selections | grep linux-image
apt-get purge linux-image-3.13.0-143-generic linux-image-extra-3.13.0-143-generic linux-image-generic

echo Update Boot Loader
update-grub2

echo Rebooting device...
reboot