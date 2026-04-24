function fd

    set excludes

    for line in (grep -vE '^\s*($|#)' ~/.config/fd/ignore)
        set excludes $excludes --exclude $line
    end

    command fd $excludes $argv

end