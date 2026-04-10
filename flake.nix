{
    description = "A very basic flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
        nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

        home-manager.url = "github:nix-community/home-manager/release-25.11";

        # The `follows` keyword in inputs is used for inheritance.
        # Here, `inputs.nixpkgs` of home-manager is kept consistent with
        # the `inputs.nixpkgs` of the current flake,
        # to avoid problems caused by different versions of nixpkgs.
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, home-manager, ... }: {
        #packages.x86_64-linux = {
          #default = self.packages.x86_64-linux.hello;
          #hello = nixpkgs.legacyPackages.x86_64-linux.hello;
        #};

        nixosConfigurations = {
            nixbtw = let
                hostName = "nixbtw"
            in
            nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";

                modules = [
                    ./nix/hostConfigurations/${hostName}

                    let
                        userName = "user1"
                    in
                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;

                        home-manager.users."${userName}" = import ./nix/home.nix;

                        # Optionally, use home-manager.extraSpecialArgs to pass
                        # arguments to home.nix
                    }
                ];
            };
        };
    };
}
