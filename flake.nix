{
  description = "A flake to provide an environment for fpga";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        libPath = pkgs.lib.makeLibraryPath [ ]; # 外部库用在 nix 环境中
      in {
        devShell = pkgs.mkShell { buildInputs = with pkgs; [ nasm dosbox-x ]; };
      });
}
