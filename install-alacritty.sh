#!/bin/bash

printf "\nEntering Alacritty install...\n\n"

sudo pacman -S --needed alacritty
cd $HOME/dotfiles
rm -rf $HOME/.config/alacritty
stow -t $HOME alacritty
