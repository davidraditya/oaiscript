#!/bin/sh
cd

echo Update all apps...
apt-get update

echo Create file hostname...
echo 'oai-pc' > /etc/hostname
