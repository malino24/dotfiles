#!/bin/bash

sudo pacman -S --needed arch-install-scripts
sudo genfstab -U / | sudo tee /etc/fstab > /dev/null

printf "\n/etc/fstab written...\n"
