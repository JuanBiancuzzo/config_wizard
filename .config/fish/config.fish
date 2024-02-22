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
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#7d7d7d'
set fish_color_param brcyan

###--- Aliases ---###

#####--- Navegacion ---#####
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

#####--- Nvim ---#####
alias vim='nvim'
