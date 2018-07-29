#!/bin/sh
# Created by David Raditya Karissaputra | email: davidraditya.netic@yahoo.com
echo Begin eNB installation...
cd ~/openairinterface5g/cmake_targets/
sudo ./build_oai -I --eNB -x --install-system-files -w USRP
sudo ./build_oai -w USRP -x -c --eNB

echo Configuring the settings to connect eNB to EPC...
sed -i -e 's/= "127.0.0.5/= "192.170.1.2/g' enb.band7.tm1.50PRB.usrpb210.conf
echo Copy eNB configruation files...
cd ~/openairinterface5g/targets/PROJECTS/GENERIC-LTE-EPC/CONF/
cp enb.band7.tm1.50PRB.usrpb210.conf ~/
cd

echo Modify eNB configuration...
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/S1_MME            = "lo";/S1_MME            = "eth0:3";/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/= "127.0.0.2/= "192.170.0.2/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/S1U               = "lo";/S1U               = "eth0:4";/g' enb.band7.tm1.50PRB.usrpb210.conf
sed -i -e 's/= "127.0.0.5/= "192.170.1.2/g' enb.band7.tm1.50PRB.usrpb210.conf