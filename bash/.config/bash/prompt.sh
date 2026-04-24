#!/bin/env bash

# echo "This is prompt.sh"

. "$(dirname ${BASH_SOURCE[0]})"/colors.sh

function my_prompt {
    local OLD_EXIT_STATUS="$?"

    # User Name
    local USERNAME_COLOR=""

    if [ "$UID" = 0 ]; then
        USERNAME_COLOR="$COLOR_FG_RED"
    else
        USERNAME_COLOR="$COLOR_FG_DEFAULT"
    fi

    local USERNAME="${USERNAME_COLOR}$(whoami)"

    # PWD
    local PWD_COLOR="$COLOR_FG_LIGHTBLUE"
    local PWD="${PWD_COLOR}$(dirs +0)"

    # Exit Status
    local EXIT_STATUS_COLOR="$COLOR_FG_LIGHTYELLOW"

    if [ "$OLD_EXIT_STATUS" != 0 ]; then
        EXIT_STATUS_COLOR="$COLOR_FG_RED"
    fi

    local EXIT_STATUS="${EXIT_STATUS_COLOR}"

    local IS_EXIT_STATUS_ASCII=true

    if [ "$OLD_EXIT_STATUS" = 0 ]; then
        if [ "$IS_EXIT_STATUS_ASCII" = true ]; then
            EXIT_STATUS+="y"
        else
            EXIT_STATUS+="✓"
        fi
    else
        if [ "$IS_EXIT_STATUS_ASCII" = true ]; then
            EXIT_STATUS+="n"
        else
            EXIT_STATUS+="✗"
        fi

        EXIT_STATUS+="${COLOR_FG_DEFAULT} (${OLD_EXIT_STATUS})"
    fi

    # Prompt Sign ($ or #)
    local PROMPT_COLOR="$COLOR_FG_LIGHTGREEN"
    local PROMPT="${PROMPT_COLOR}"

    if [ "$UID" = 0 ]; then
        PROMPT+="#"
    else
        PROMPT+="$"
    fi

    echo -e "\n${USERNAME} ${PWD} ${EXIT_STATUS}\n${PROMPT} ${COLOR_RESET}"
}

#export PS1='\u@\h:\w\$ '   # default in Debian?
export PS1='[\u@\h \W]\$ ' # default in Arch

#export PS1='$(my_prompt)'
export PS2="> "
export PS3="#? "
export PS4="++ "
export PROMPT_COMMAND=""
