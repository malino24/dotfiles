
{ config, pkgs, ... }:

{
    programs.discord.enable = true;
    programs.discord.settings.SKIP_HOST_UPDATE = true;

    programs.vesktop.enable = true;


    # https://github.com/NixOS/nixpkgs/issues/195512#issuecomment-1616698347
    # nix run "github:steinerkelvin/dotfiles#discord-krisp-patch"
}
