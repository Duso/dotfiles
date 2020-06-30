#
# ~/.bash_profile
#

export PATH=$PATH:$HOME/.scripts
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export PAGER="less"
export TERMINAL="urxvt"
export BROWSER="brave"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE="-"
export HISTCONTROL=ignoredups:ignorespace

# export QT_QPA_PLATFORMTHEME=gtk2
#export GOPATH=$HOME/workspace/go
#export GOBIN=$HOME/workspace/go/bin
#export PATH=$PATH:/$home/.node_modules/bin
#export npm_config_prefix=~/.node_modules

#eval `dircolors ~/.dir_colors`
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# start X
[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && exec startx
