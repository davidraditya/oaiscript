#!/bin/sh
# Created by David Raditya Karissaputra | email: davidraditya.netic@yahoo.com

echo Configure EPC...
cd ~/openair-cn/BUILD/EPC/
sed -i -e 's/= "@REALM@";/= "openair4G.eur";/g' epc.conf.in
sed -i -e 's|@FREEDIAMETER_PATH@|/usr/lib|g' epc.conf.in
sed -i -e 's/@HSS_HOSTNAME@/oai-pc/g' epc.conf.in
sed -i -e 's/MNC="95";/MNC="93";/g' epc.conf.in
sed -i -e 's/TAC = "15";/TAC = "1";/g' epc.conf.in
sed -i -e 's/TAC = "14";/TAC = "2";/g' epc.conf.in
sed -i -e 's/TAC = "12";/TAC = "3";/g' epc.conf.in
sed -i -e 's/TAC = "11";/TAC = "4";/g' epc.conf.in
sed -i -e 's/TAC = "10";/TAC = "5";/g' epc.conf.in
sed -i -e 's/= "127.0.0.1:5656";/= "CONSOLE";/g' epc.conf.in

#Ask for previously recorded eth0 IP $newipadd			// "read" command can't be used in POWDER
#read -p "Enter previously recorded eth0 IP: " newipadd	// "read" command can't be used in POWDER

#change PGW_IPV4_ADDRESS_FOR_SGI with new IP address 	// "read" command can't be used in POWDER
#sed -i -e 's/192.168.12.17/$newipadd/g' epc.conf.in	// "read" command can't be used in POWDER

sed -i -e 's/192.168.106.12/140.118.31.99/g' epc.conf.in
sed -i -e 's/192.168.12.100/8.8.8.8/g' epc.conf.in