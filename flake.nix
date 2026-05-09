{
  description = "EZroot build environment";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [python3 python313Packages.pygame];

        inputsFrom = [];

        shellHook = ''
          alias run="python3 main.py"
          alias edit="nvim main.py"
          onefetch
          echo
          echo "Pygame building shell loaded!"
        '';
      };
    });
}
