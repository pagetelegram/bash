#!/bin/bash

#For RPi 1 replace the first line by:
#wget http://users.freebasic-portal.de/stw/builds/linux-armv6-rpi/freebasic.deb

wget http://users.freebasic-portal.de/stw/builds/linux-armv7a-hf-debian/freebasic.deb
wget http://users.freebasic-portal.de/stw/builds/freebasic-headers.deb
sudo dpkg -i freebasic.deb
sudo dpkg -i freebasic-headers.deb
apt-get update
apt-get install -f

