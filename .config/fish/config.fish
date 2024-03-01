###--- GENERAL ---###

set fish_greeting # suprimir fish greeting
set EDITOR /usr/bin/nvim # seteando nvim como editor

###--- MANPAGER ---###
set -x MANPAGER "nvim +Man!"

###--- Prompt ---###
source ~/.config/fish/functions/prompt.fish

###--- Key bindings ---###
function fish_user_key_bindings
    fish_vi_key_bindings
end

###--- Colores ---###
# Crearlo a partir del fondo de pantalla, con source
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#7d7d7d'
set fish_color_param brcyan

###--- Path ---###
set -x PATH $HOME/.cargo/bin:$HOME/.local/bin:$HOME/.config/bin $PATH

###--- Aliases ---###

#####--- Navegacion ---#####
zoxide init --cmd cd fish | source
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
