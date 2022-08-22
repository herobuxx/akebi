#!/bin/bash

echo -e "* Test Akebi $(date)               *"
echo -e ""
akebi -c
akebi -h
akebi -i
akebi -m
akebi -s
akebi -v
echo -e "Done!"

