#!/usr/bin/env bash

languages=`echo "lua cpp c typescript python go" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk" | tr ' ' '\n'`
selected=`printf "$languages\n$core_utils" | fzf`

read -p "Enter Query: " query

if printf "$languages" | grep -qs "$selected"; then
    tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi

