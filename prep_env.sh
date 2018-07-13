#!/bin/sh
cd

echo Update all apps...
sudo apt-get update

echo Change hostname to "oai-pc"...
sudo sed '1i\'$'\n''oai-pc'$'\n' /etc/hostname
