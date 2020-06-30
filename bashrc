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
alias cp='cp -v'
alias mv='mv -vi'
alias rm='rm -v'
alias mkdir='mkdir -pv'
alias ..='cd ..'
alias ...='cd ../..'

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -alh --color=auto'
alias lh='ls -lh --color=auto'

alias nv='nvim'
alias diff='nvim -d'
alias feh='feh --draw-filename --auto-rotate --scale-down --image-bg "#2E3440"'

# color man pages
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;34m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;34m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;90;46m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# shell prompt
PS1='[\u@\h \W]\$ '
