#
# ~/.bash_profile
#

export QT_QPA_PLATFORMTHEME=gtk2
export PATH=$PATH:$HOME/.scripts
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export VISUAL="nvim"
export DIFFPROG="nvim -d"
export SUDO_EDITOR="nvim"
export TERMINAL="urxvt"
export BROWSER="firefox"

export GOPATH=$HOME/workspace/go
export GOBIN=$HOME/workspace/go/bin

export PATH=$PATH:/$home/.node_modules/bin
export npm_config_prefix=~/.node_modules

eval `dircolors ~/.dir_colors`

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ ! $DISPLAY && $XDG_VTNR -eq 1 && $(id --group) -ne 0 ]] && exec startx
