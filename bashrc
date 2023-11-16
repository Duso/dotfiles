#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# options
shopt -s autocd

# sources
source /usr/share/doc/pkgfile/command-not-found.bash

# aliases
alias su='su -l'
alias sudo='sudo '
alias sudoe='sudo -e'
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -vI'
alias mkdir='mkdir -pv'
alias ..='cd ..'
alias ...='cd ../..'
alias :q=' exit'
alias :Q=' exit'

alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -alh --color=auto'
alias lh='ls -lh --color=auto'
alias df='df -h'
alias du='du -ch'
alias dmesg='dmesg -H'

alias nv='nvim'
alias nvc='rm .local/share/nvim/swap/*'
alias diff='nvim -d'
alias more='less'
alias feh='feh --draw-filename --auto-rotate --scale-down --image-bg "#2E3440"'
alias sct='syncthing --browser-only'

# dircolors
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# shell prompt
# check /etc/bash.bashrc
