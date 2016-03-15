#!/bin/zsh

function gcd(){
    if  git status > /dev/null ;then
        gcd_target_dir=`git worktree list | grep "\[$@\]" | awk '{print $1}'`
        if [ "$gcd_target_dir" != "" ];then
            cd "$gcd_target_dir"
            unset gcd_target_dir
            cd .
        else
            reponame=`git remote -v | grep origin | head -n1 | awk '{print $2}' | sed -n 's/.*\/\(.*\).git/\1/p'`
            noslashname=`echo $@ | sed -n 's/\//-/p'`
            gcd_target_dir="../$reponame-$noslashname"
            git worktree add $gcd_target_dir $@ || echo "Failed to create worktree automatically" && return 1
            cd "$gcd_target_dir"
        fi
    fi
}

