#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

UD=$(eval echo "~")

for i in ~/.config/bash/*.sh; do
    . $i
done

#eval "$(starship init bash)"
