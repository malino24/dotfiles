
{ config, pkgs, ... }:

{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.user1 = {
        isNormalUser = true;
        description = "user1";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
            kdePackages.kate
            # thunderbird
        ];
    };
}