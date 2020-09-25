#/usr/bin/zsh

alias pu="phpunit"
alias dots="cd ~/.dotfiles && vim"
alias tmux="tmux -2"
alias wserver="python -m SimpleHTTPServer 8000"
#show hidden files
alias lsdot='ls -ld .*'
# Count elements inside a folder:
alias lscount='ls -l | grep -v ^l | wc -l'

# Get octal number of file/folder:
# Ubuntu/linux: https://askubuntu.com/a/152003 
#
# Validate OS, stolen from:
# https://unix.stackexchange.com/a/252170
if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    alias oct="stat -f %Mp%Lp" # Mac
    alias inst="brew install"
    alias killcam="sudo killall VDCAssistant"
    # stolen from my friend Casiva Agustin 
    # when the webcam suddenly stops working on MacOS
    # http://casivaagustin.com.ar/index.php/osx-la-camara-deja-de-funcionar/
else
    alias oct="stat -c %a" # Ubuntu/Debian
    alias inst="sudo apt-get install"
    alias upd="sudo apt-get update"
fi
