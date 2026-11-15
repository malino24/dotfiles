{
    description = "A very basic flake";
    
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-26.05";
        home-manager.url = "github:nix-community/home-manager";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };
    
    outputs = { self, nixpkgs, home-manager, ... } @ inputs: {
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
