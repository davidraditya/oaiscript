#!/bin/sh
# Created by David Raditya Karissaputra | email: davidraditya.netic@yahoo.com
echo Begin EPC installation...
cd openair-cn/SCRIPTS/
sudo ./build_hss -i
sudo ./build_epc -i

echo Begin eNB installation...
cd ~/openairinterface5g/cmake_targets/
sudo ./build_oai -I --eNB -x --install-system-files -w USRP
sudo ./build_oai -w USRP -x -c --eNB

echo Configuring the settings to connect eNB to EPC...
echo Copy eNB configruation files...
cd ~/openairinterface5g/targets/PROJECTS/GENERIC-LTE-EPC/CONF/
cp enb.band7.tm1.50PRB.usrpb210.conf ~/
cd

echo Modify eNB configuration...
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/S1_MME            = "lo";/S1_MME            = "eth0:3";/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/S1_MME              = "127.0.0.2/24";/S1_MME              = "192.170.0.2/24";/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/S1U               = "lo";/S1U               = "eth0:4";/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/S1U                 = "127.0.0.5/24";/S1U                 = "192.170.1.2/24";/g' enb.band7.tm1.50PRB.usrpb210.conf