#!/bin/bash

sudo pacman -S --needed stow

rm $HOME/.config/ksmserverrc

cd $HOME/dotfiles
stow -t $HOME plasma

