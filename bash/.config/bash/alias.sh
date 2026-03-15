
#!/bin/bash

# default args
alias cp='cp -i'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias stow='stow -t ~'

# ls
alias ll='ls -bplah' # --escape --indicator-style=slash -l --all --human-readable
alias lk='ls -bplh'   # --escape --indicator-style=slash -l --almost-all --human-readable

# useful
alias clear='printf "\e[H\e[3J"'
alias freespace="df -h"
alias hg="history | grep"
alias listusers="cat /etc/passwd | cut -d: -f1 | grep -v -P '^(daemon|bin|sys|sync|games|man|lp|mail|news|uucp|proxy|www-data|backup|list|irc|gnats|nobody|systemd-timesync|systemd-network|systemd-resolve|systemd-bus-proxy|sshd|mysql|messagebus)'"
alias t='exit'
alias tl="ps -ef"
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# fun
alias k=":"
alias gayclock='while [ true ]; do clear; toilet -F border -f term $(date +%F\ %T) --gay; sleep 1; done'
alias metalclock='while [ true ]; do clear; toilet -F border -f term $(date +%F\ %T) --metal; sleep 1; done'
alias starwars='telnet towel.blinkenlights.nl'

# programming
alias py="python3"

# background aliases if not able to start properly from wmenu
alias geogebra-bg='_JAVA_AWT_WM_NONREPARENTING=1 geogebra 2>&1 > /dev/null &'
alias dolphin-bg='dolphin 2>&1 > /dev/null &'
