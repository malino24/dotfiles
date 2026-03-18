#!/bin/bash

printf "\nEntering paru install...\n\n"

sudo pacman -S --needed git base-devel
mkdir -p $HOME/dotfiles/.cache
cd $HOME/dotfiles/.cache
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --needed
