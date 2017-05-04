#/usr/bin/zsh

alias pu="phpunit"
alias dots="cd ~/.dotfiles && vim"
alias tmux="tmux -2"
#show hidden files
alias lsdot='ls -ld .*'

# Get octal number of file/folder:
# Ubuntu/linux: https://askubuntu.com/a/152003 
#
# Validate OS, stolen from:
# https://unix.stackexchange.com/a/252170
if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    alias oct="stat -f %Mp%Lp" # Mac
    alias inst="brew install"
else
    alias oct="stat -c %a" # Ubuntu/Debian
    alias inst="sudo apt-get install"
    alias upd="sudo apt-get update"
fi
