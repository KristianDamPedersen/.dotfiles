{
  description = "WSL flake";

  # Where we fetch stuff
  inputs = {
    
    nixpkgs = {
      # Desired NixOS version
      url = "github:NixOS/nixpkgs/nixos-23.11"; 
    };
    
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs"; # Ensures the same version as nixpkgs
    };
  };
  
  # What we do with the fetched stuff
  outputs = {self, nixpkgs, nixos-wsl, home-manager, ... }:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      # "nixos" should match the host name
      nixos = lib.nixosSystem {
        inherit system;
	modules  =[ 
	  ./configuration.nix 
	];
      };
    };

    # User specific configurations
    homeConfigurations = {
      # "nixos" should match the user name
      kristian = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	      modules  =[ 
	      ./users/kristian/home.nix 
	      ];
      };
    };
  };
}
