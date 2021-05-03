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

# color man pages
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;34m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;34m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;90;46m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# dircolors
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# shell prompt
if [[ ! -f $THEME ]]; then
	PS1='[\u@\h \W]\$ '
fi

