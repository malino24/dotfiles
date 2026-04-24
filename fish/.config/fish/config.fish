if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cat='bat --paging=never --color=auto --style=plain'
alias ls='eza --color=auto'
alias lk='eza --color=auto --long'
alias ll='eza --color=auto --long --all --classify=always --git'
alias cd='z'
alias cdi='zi'

alias fzf_bat='fzf --preview="bat --color=always {}"'

alias hg='history | grep'
alias py='python3'

starship init fish | source
fzf --fish | source
zoxide init fish | source
