#!/bin/zsh

alias setvimmode="set -o vi"
alias py=ipython
alias gpr="git pull --rebase"
alias gl='git log --date=relative --decorate --format=format:"%an%x09 : %C(yellow)%h%Creset %C(yellow reverse)%d%Creset: %s %C(bold green)(%ar)%C(reset) " --graph'
alias glr="git log --date=relative --decorate --format=format:'%an%x09 : %C(yellow)%h%Creset %C(yellow reverse)%d%Creset: %s %C(bold green)(%ar)%C(reset) ' --graph | head -n 500 | slit"
alias sshu='ssh -l ubuntu'
alias l='ls -lahrt'
alias ccat='pygmentize -g'
alias -g ssh_ignore='-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias -g pjson='| underscore print --color'
alias epoch='date +"%s"'
alias gsu='git submodule update'
alias pyrem='find . -name "*.pyc" -delete'
alias unixtime='date +%s'
alias fixup='git commit -a --fixup HEAD'
alias gas='git rebase --autosquash -i'
alias gasom='gas origin/master'
alias gfix='fixup; gasom'
alias ts2date='date -r'
