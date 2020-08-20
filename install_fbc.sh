#!/bin/bash
sudo apt install gcc make lib{ncurses5,gpm,x11,xext,xpm,xrandr,xrender,gl1-mesa,ffi}-dev
wget 'http://sourceforge.net/projects/fbc/files/Binaries%20-%20Linux/FreeBASIC-0.90.1-linux.tar.gz/download?download=#' -O FreeBASIC-0.90.1-linux.tar.gz
tar -xf FreeBASIC-0.90.1-linux.tar.gz
cd FreeBASIC-0.90.1-linux
sudo ./install.sh
