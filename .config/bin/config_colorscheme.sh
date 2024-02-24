#!/bin/bash

wallpaper=win.jpg
#wallpaper=the-dog-and-the-dragon.jpg

# definir wallpaper
swww img ~/wallpapers/$wallpaper

# generamos el colorscheme
wal -i ~/wallpapers/$wallpaper

# seteando los colores
python3 ~/.config/bin/set_colorscheme.py "$HOME/.cache/wal/colors" \
    | xargs -I {}  mv {} ~/.colors/{}
# rm ~/.colors/{} &

source ~/.config/waybar/launch.sh
