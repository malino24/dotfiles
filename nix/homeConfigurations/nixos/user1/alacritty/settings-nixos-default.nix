
{ config, pkgs, ... }:

{
    programs.alacritty.settings = {
        font = {
            size = 12;
            draw_bold_text_with_bright_colors = true;
        };

        scrolling.multiplier = 5;
        selection.save_to_clipboard = true;
    };
}
