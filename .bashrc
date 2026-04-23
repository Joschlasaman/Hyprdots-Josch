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
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

GCC() { gcc -o main.o "$1" && ./main.o; }
alias vcc='~/.ai/Projects/verified-compiler/target/release/verified-compiler'
VCC() { vcc --emit-elf "$1" -o "${1%.c}.o" && gcc -o "${1%.c}" "${1%.c}.o" && ./"${1%.c}"; }
