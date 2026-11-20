# Source: https://github.com/Sighery/rincon.git
{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    };

    outputs = { self, nixpkgs, ... }:
    let
        forAllSystems = f: nixpkgs.lib.genAttrs
                           nixpkgs.lib.systems.flakeExposed
                           (system: f nixpkgs.legacyPackages.${system});
    in
    {
        devShells = forAllSystems (pkgs: {
            default = pkgs.mkShellNoCC {
                packages = with pkgs; [
                    dotnet-sdk
                    csharp-ls
                    netcoredbg
                ];

                env.DOTNET_CLI_TELEMETRY_OPTOUT = "1";
                env.DOTNET_NO_LOGO = "1";
            };
        });
    };
}
