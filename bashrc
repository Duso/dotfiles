#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# duso aliases
alias su='su -l'
alias sudo='sudo '
alias sudoe='sudo -e'
alias cp='cp -v'
alias mv='mv -vi'
alias rm='rm -v'
alias mkdir='mkdir -p -v'
alias ..='cd ..'
alias ...='cd ../..'


alias ping='ping -c 5'
alias mkdir='mkdir -p'

alias grep='grep --color=auto'
alias ls='ls --color=auto'

# shell prompt
PS1='[\u@\h \W]\$ '
