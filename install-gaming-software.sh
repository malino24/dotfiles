#!/bin/bash

printf "\nEntering gaming software install...\n\n"

sudo pacman -S --needed steam
sudo pacman -S --needed lutris

sudo pacman -S --needed protonplus
