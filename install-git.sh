#!/bin/bash

printf "\nEntering Git install...\n\n"

sudo pacman -S --needed git
printf "\nGitHub configuration:\n\n"

printf "Your mail: "
read gitMail
git config --global user.email $gitMail
printf "Mail set\n\n"

printf "Your name: "
read gitName
git config --global user.name $gitName
printf "Name set\n\n"

git config --global credential.helper store
