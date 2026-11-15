{ lib, ... }: dir: name: type:
    if name == "default.nix" then
        false
    else if type == "regular" then
        lib.hasSuffix ".nix" name
    else if type == "directory" then
        builtins.pathExists (dir + "/${name}/default.nix")
    else
        false
