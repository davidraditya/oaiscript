#!/bin/sh
# Created by David Raditya Karissaputra | email: davidraditya.netic@yahoo.com

echo Configure EPC...
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in
sed -i -e 's/= "127.0.0.3";/= "192.170.0.1";/g' openair-cn/BUILD/EPC/epc.conf.in

#Ask for new hostname $newhost
echo "Enter new hostname: "
read newhost

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts


