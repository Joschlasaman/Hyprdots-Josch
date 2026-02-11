#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias update='~/.config/scripts/update-all.sh'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/josch/.spicetify
export PS1='\[\033[1;34m\]\u\[\033[0;35m\]@\[\033[0;37m\]\h \[\033[0;34m\]\w\[\033[0m\]\$ '
