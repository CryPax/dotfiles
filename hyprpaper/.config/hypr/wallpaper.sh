#!/bin/bash
WALLPAPER_DIRECTORY=~/.config/backgrounds
WALLPAPER=$(fd . "$WALLPAPER_DIRECTORY" --type f | shuf -n 1)

hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"
