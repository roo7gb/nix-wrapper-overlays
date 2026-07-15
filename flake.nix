# nix-wrapper-overlays/flake.nix

{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self }: {

    overlays = {
      fastfetch = import ./overlays/fastfetch;
      # hyprland = import ./overlays/hyprland;
      # hyprlock = import ./overlays/hyprlock;
      # nushell = import ./overlays/nushell;
      wezterm = import ./overlays/wezterm;
    };
  };
}

