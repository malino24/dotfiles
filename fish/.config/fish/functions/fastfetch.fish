function fastfetch
    set cmd fastfetch

    if test -e "$HOME/.config/fastfetch/config.jsonc" && test (count $argv) -eq 0
        set cmd $cmd --config "$HOME/.config/fastfetch/config.jsonc"
    end

    command $cmd $argv
end
