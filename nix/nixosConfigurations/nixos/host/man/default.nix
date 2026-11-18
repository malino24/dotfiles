{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [ man-pages man-pages-posix ];

    documentation.man.enable = true;
    documentation.man.cache.enable = true;
}
