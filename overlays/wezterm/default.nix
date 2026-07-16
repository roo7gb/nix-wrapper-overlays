# nix-wrapper-overlays/overlays/wezterm/default.nix

final: prev: {
  conf-wezterm = final.symlinkJoin {
    name = "conf-wezterm";
    paths = [ final.wezterm ];
    buildInputs = [ final.makeWrapper ];
    postBuild = ''
      wrapProgram "$out/bin/wezterm" \
      --add-flags "--config-file ${./wezterm.lua}"
    '';
  };
}

