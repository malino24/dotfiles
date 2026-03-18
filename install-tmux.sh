#!/bin/bash

printf "\nEntering tmux install...\n\n"

sudo pacman -S --needed tmux
cd $HOME/dotfiles
rm -rf $HOME/.config/tmux
stow -t $HOME tmux
