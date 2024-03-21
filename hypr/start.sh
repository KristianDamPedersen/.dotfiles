#!/usr/bin/env bash
# Initializing wallpaper daemon
swww init &
# Setting the wallpaper
swww img ~/Wallpapers/gruvbox-mountain-village.png &
# Network applet
nm-applet --indicator &
# The bar
waybar &

dunst &
# clipboard
wl-paste -t text --watch clipman store --no-persist
