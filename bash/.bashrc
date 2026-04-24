#!/bin/env bash

#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

# echo "This is .bashrc"

[[ -f "$HOME/.config/bash/functions.sh" ]] && source "$HOME/.config/bash/functions".sh

source_file "$HOME/.config/bash/env.sh"
source_file "$HOME/.config/bash/colors.sh"
source_file "$HOME/.config/bash/alias.sh"
source_file "$HOME/.config/bash/prompt.sh"

if grep -qv 'fish' /proc/$PPID/comm && [[ ${SHLVL} == [1,2] ]]; then
    exec fish
fi

# xhost +SI:localuser:root 2>&1 > /dev/null