{ config, lib, pkgs, ...}:
{

  home.packages = [ pkgs.gcc pkgs.nodejs_21 pkgs.nodePackages.pyright pkgs.ripgrep];
  xdg.configFile."nvim".source = ../../../nvim;
}
