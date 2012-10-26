
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias du1="du -sh ."
alias du2="du -sh --max-depth=1 ."

alias l="ls -lha --color=auto"

trova() {
  grep -rnI "$@" . | sed 's/\:\s\+/\:\n/g'
}

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# make history file bigger
HISTFILE=~/.bash_history
HISTSIZE=10000
HISTFILESIZE=999999

## Up Arrow: search and complete from previous history
bind '"\eOA": history-search-backward'
#bind '"\e[A":history-search-backward'

## Down Arrow: search and complete from next history
bind '"\eOB": history-search-forward'
#bind '"\e[B":history-search-forward'

