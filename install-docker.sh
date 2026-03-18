#!/bin/bash

printf "\nEntering Docker install...\n\n"

sudo pacman -S --needed docker
sudo systemctl enable --now docker.service
sudo usermod -aG docker $USER
