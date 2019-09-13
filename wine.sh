#!/bin/bash
sudo apt-get install software-properties-common
sudo dpkg --add-architecture i386
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt-add-repository https://dl.winehq.org/wine-builds/debian/
sudo apt update
sudo apt install winehq-stable
