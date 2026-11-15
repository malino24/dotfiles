{
    description = "A very basic flake";
    
    inputs = {
        nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";
        nixpkgs-stable.url = "https://channels.nixos.org/nixos-26.05/nixexprs.tar.zst";
    };
    
    outputs = { self, nixpkgs, ... } @ inputs: {
        packages = builtins.mapAttrs (system: pkgs: {
            hello = pkgs.hello;
            default = inputs.self.packages.${system}.hello;
        }) inputs.nixpkgs.legacyPackages;

        nixosConfigurations = {
            nixos = let
                hostName = "nixos";
            in nixpkgs.lib.nixosSystem {
                system = "x86_64_linux";
                
                specialArgs = { inherit inputs; };
                
                modules = [
                    ./nix/hostConfigurations/${hostName}
                ];
            };
        };
    };
}
