#!/bin/sh
cd

echo Update all apps...
sudo apt-get update

echo Create file hostname...
sudo su
echo 'oai-pc' > /etc/hostname
exit
