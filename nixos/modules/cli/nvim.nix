{ config, lib, pkgs, ...}:
{

  home.packages = [ pkgs.gcc ];
  xdg.configFile."nvim".source = ../../../nvim;
}
