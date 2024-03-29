#
# ~/.bash_profile
#

export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.local/bin
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export PAGER="less"
export AUR_PAGER="nvim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE="-"
export HISTCONTROL=ignoredups:ignorespace
export QT_QPA_PLATFORMTHEME=qt6gtk2

#export GOPATH=$HOME/workspace/go
#export GOBIN=$HOME/workspace/go/bin
#export PATH=$PATH:/$home/.node_modules/bin
#export npm_config_prefix=~/.node_modules

#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# start X
#[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && exec startx
