# nix-wrapper-overlays/overlays/hyprlock/default.nix

final: prev: {
  conf-hyprlock = final.symlinkJoin {
    name = "conf-hyprlock";
    paths = [ final.hyprlock ];
    buildInputs = [ final.makeWrapper ];
    postBuild = ''
      wrapProgram "$out/bin/hyprlock" \
      --add-flags "-c ${./hyprlock.conf}"
    '';
  };
}

