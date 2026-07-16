# nix-wrapper-overlays/flake.nix

{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: {

    overlays = {
      conf-fastfetch = import ./overlays/fastfetch;
      # conf-hyprland = import ./overlays/hyprland;
      # conf-hyprlock = import ./overlays/hyprlock;
      # conf-nushell = import ./overlays/nushell;
      conf-wezterm = import ./overlays/wezterm;
    };
  };
}

