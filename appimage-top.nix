{ pkgs }:

rec {
  appimagetool = pkgs.callPackage ./appimagetool.nix {};

  appimage = pkgs.callPackage ./appimage.nix {
    inherit appimagetool;
  };

  appdir = pkgs.callPackage ./appdir.nix { inherit pkgs; };
}
