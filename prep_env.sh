#!/bin/sh
cd

echo Update all apps...
apt-get update

echo Create file hostname...
echo 'oai-pc' > /etc/hostname

echo Add oai-pc in hosts file...
sed -i '5i127.0.1.1		oai-pc.openair4G.eur oai-pc' /etc/hosts