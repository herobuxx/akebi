#!/bin/bash

echo "*[+] Installing Dependecies for Akebi..."
sudo DEBIAN_FRONTEND=noninteractive \
    apt install \
    x11-xserver-utils \
    dnsutils -y

echo "*[+] Installing Akebi..."
sudo make > /dev/null
sudo make install
echo "*================================"
echo "*     Installation complete!    *"
echo "*================================"