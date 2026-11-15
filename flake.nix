{
    description = "A very basic flake";
    
    inputs = {
        nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";
        nixpkgs-stable.url = "https://channels.nixos.org/nixos-26.05/nixexprs.tar.zst";
        home-manager.url = "github:nix-community/home-manager";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };
    
    outputs = { self, nixpkgs, home-manager, ... } @ inputs: {
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

                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.extraSpecialArgs = { inherit inputs; };

                        home-manager.users.user1 = ./nix/homeConfigurations/${hostName}/user1/home.nix;
                    }
                ];
            };
        };
    };
}
