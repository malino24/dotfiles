#!/bin/sh

path=$(pwd | sed "s|$HOME|~|")

if test $(id -u) -eq 0; then
    echo "red"
else
    echo "green"
fi
