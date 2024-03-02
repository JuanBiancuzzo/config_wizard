#!/bin/sh

path="$(pwd)"

cd $HOME/.config/nixos

nix flake update

sudo nixos-rebuild swtich --flack .#nixos

cd $path
