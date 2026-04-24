function ghostty_theme

    set -f argc (count $argv)

    if test $argc -gt 0
        set -f theme $argv[1]
    else 
        set -f theme (ghostty +list-themes | fzf)
    end

    set -f theme (echo "$theme" | sed "s/^\(.*\) (resources)\$/\1/")

    echo "theme = $theme" > ~/.config/ghostty/auto/theme.ghostty

end