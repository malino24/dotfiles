#!/bin/bash

# TODO: mpv, vlc, ffmpeg, discord, spotify

CURRENT_DIR="$(pwd)"

./install-clear-cache.sh

./install-ntfs-3g.sh

./install-tldr.sh
./install-shells.sh

./install-git.sh
./install-stow.sh
./install-tmux.sh
./install-alacritty.sh

./install-discord.sh
./install-spotify.sh

./install-docker.sh
./install-prg-essentials.sh

./install-gaming-software.sh

./install-yay.sh
./install-paru.sh

cd $CURRENT_DIR
