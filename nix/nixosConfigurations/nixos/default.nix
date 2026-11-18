{ nixpkgs, home-manager, ... } @ inputs:

nixpkgs.lib.nixosSystem
{
    system = "x86_64_linux";

    specialArgs = { inherit inputs; };

    modules = [
        ./host

        home-manager.nixosModules.home-manager
        {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };

            home-manager.users.user1 = ./user1;
        }
    ];
}
