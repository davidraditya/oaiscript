#!/bin/sh
# Created by David Raditya Karissaputra | email: davidraditya.netic@yahoo.com

echo Configure EPC...
sed -i -e 's/= "@REALM@";/= "openair4G.eur";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/MNC="95";/MNC="93";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/TAC = "15";/TAC = "1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/TAC = "14";/TAC = "2";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/TAC = "12";/TAC = "3";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/TAC = "11";/TAC = "4";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/TAC = "10";/TAC = "5";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.1:5656";/= "CONSOLE";/g' openair-cn/BUILD/EPC/epc.conf.in

#Ask for previously recorded eth0 IP $newipadd
echo "Enter previously recorded eth0 IP: "
read newipadd

#change PGW_IPV4_ADDRESS_FOR_SGI with new IP address
sed -i -e 's/192.168.12.17/$newipadd/g' openair-cn/BUILD/EPC/epc.conf.in

sed -i -e 's/192.168.106.12/140.118.31.99/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/192.168.12.100/8.8.8.8/g' openair-cn/BUILD/EPC/epc.conf.in