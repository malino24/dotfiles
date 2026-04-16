#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

for i in ~/.config/bash/*.sh; do
    source $i
done

exec fish
