#!/bin/bash

echo "*[+] Installing Dependecies for Akebi..."

if [[ "$(command -v apt)" != "" ]]; then
 	sudo DEBIAN_FRONTEND=noninteractive \
	    apt install \
    	x11-xserver-utils \
    	dnsutils \
    	wget -y
elif [[ "$(command -v pacman)" != "" ]]; then
   sudo pacman -Sy --noconfirm \
        xorg-xrandr \
        dig
fi

echo "*[+] Installing Akebi..."
sudo make > /dev/null
sudo make install
echo "*================================"
echo "*     Installation complete!    *"
echo "*================================"
