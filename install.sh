#!/bin/bash

echo "*[+] Installing Dependecies for Akebi..."

if [[ "$(command -v apt)" != "" ]]; then
 	sudo DEBIAN_FRONTEND=noninteractive \
	    apt install \
    	x11-xserver-utils \
    	dnsutils \
    	wget \
	lsb-release  -y
elif [[ "$(command -v pacman)" != "" ]]; then
   sudo pacman -Sy --noconfirm \
	make \
	wget \
        xorg-xrandr \
	bind \
	lsb-release
fi

echo "*[+] Installing Akebi..."
sudo make > /dev/null
sudo make install
echo "*================================"
echo "*     Installation complete!    *"
echo "*================================"
