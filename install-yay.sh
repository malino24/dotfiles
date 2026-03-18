#!/bin/bash

printf "\nEntering yay install...\n\n"

sudo pacman -S --needed git base-devel
mkdir -p $HOME/dotfiles/.cache
cd $HOME/dotfiles/.cache
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --needed
