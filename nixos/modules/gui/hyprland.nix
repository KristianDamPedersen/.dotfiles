{ config, lib, pkgs, ...}:
{
  xdg.configFile."hyprland".source = ../../../hypr/hyprland.conf;
}
