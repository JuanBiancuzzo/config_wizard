#!/bin/fish

# generamos el colorscheme
wal -i $HOME/.cache/wallpaper_actual.jpg

# seteando los colores
python3 ~/.config/bin/set_colorscheme.py "$HOME/.cache/wal/colors" \
    | xargs -I {}  mv {} ~/.colors/{}
# rm ~/.colors/{} &

source ~/.config/waybar/launch.sh
