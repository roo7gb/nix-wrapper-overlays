# nix-wrapper-overlays/fastfetch/default.nix

final: prev: {
  conf-fastfetch = final.symlinkJoin {
    name = "conf-fastfetch";
    paths = [ final.fastfetch ];
    buildInputs = [ final.makeWrapper ];
    postBuild = ''
      wrapProgram "$out/bin/fastfetch"
      --add-flags "-c ${./config.jsonc}"
    '';
  };
}

