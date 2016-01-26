####!/bin/zsh
###
####shortcut for current path
alias -g cpath='echo $0:A:h'

for file in $(cpath)/src/*; do
    source "$file"
done

#set -o vi
#source $(cpath)"/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
