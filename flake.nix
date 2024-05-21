{
  description = "Personal website";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let pkgs = import nixpkgs { system = "x86_64-linux"; }; in
  {
    devShell.x86_64-linux = pkgs.mkShell {
      buildInputs = with pkgs; [
        hexo-cli
        nodejs_20
      ];
    };
  };
}
