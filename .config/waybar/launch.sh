#!/bin/sh

# paramos todas las barras que tengamos
killall waybar

# creamos una barra nueva
waybar -c ~/.config/waybar/config.jsonc & -s ~/.config/waybar/style.css
