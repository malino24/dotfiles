#!/bin/zsh

export PATH="$PATH:/home/user1/.local/bin"
export PATH="$PATH:/home/user1/.dotnet/tools"
export PATH="$PATH:/home/user1/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH:/home/user1/Programming/By Projects/gi-tools/bin"

export QT_QPA_PLATFORMTHEME=qt5ct
export _JAVA_AWT_WM_NONREPARENTING=1

xhost +SI:localuser:root 2>&1 > /dev/null
