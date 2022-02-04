{ config, pkgs, expr, buildVM, ... }:

{
  fonts = {
    enableDefaultFonts = true;
    fontDir.enable = true;

    fonts = with pkgs; [
      noto-fonts-emoji
      powerline-fonts
      emacs-all-the-icons-fonts
      source-code-pro
      material-icons
      hack-font
      (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
    ];

    fontconfig = {
      enable = true;
      defaultFonts.monospace = [ "DejaVuSansMono" ];
    };
  };
}