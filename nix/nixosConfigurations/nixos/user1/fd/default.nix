{ config, pkgs, ... }:

{
    programs.fd.enable = true;

    programs.fd.ignores = [
        "/mnt"
        "/run"
        "/run/media"
        "/media"
    ];
}
