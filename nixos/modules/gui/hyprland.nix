{ config, lib, pkgs, ...}:
{
  xdg.configFile."hypr".source = ../../../hypr;
}
