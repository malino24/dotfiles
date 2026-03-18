#!/bin/bash

printf "\nEntering tldr install...\n\n"

sudo pacman -S --needed tealdeer
tldr --update
