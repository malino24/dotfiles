{ config, pkgs, ... }:

{
    programs.bash.enable = true;
    programs.bash.historyFileSize = 100000;
    programs.bash.historySize = 10000;
}
