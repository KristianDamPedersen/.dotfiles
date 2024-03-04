{ config, lib, pkgs, ...}:
{

  environment.systemPackages = with pkgs; [
    gcc
  ];
  xdg.configFile."nvim".source = ../../../nvim;
}
