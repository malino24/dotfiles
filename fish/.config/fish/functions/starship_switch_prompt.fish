function starship_switch_prompt

    if test (count $argv) -lt 1

        # rm ~/.config/starship.toml
        
        echo "Usage: starship_switch_prompt [prompt_name]"
        echo "[prompt_name] for example: config.toml (inside ~/.config/starship/configs)"
        
        return 1

    else

        rm "$HOME/.config/starship.toml"
        cd "$HOME/.config"
        ln -s "starship/configs/$argv[1].toml" "starship.toml"

        return 0

    end


end
