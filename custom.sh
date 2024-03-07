#!/usr/bin/env bash

edit_pane() {
    current_session=$(tmux display-message -p '#S')
    tmux capture-pane -p -S 0 -t $current_session > ~/.cache/tmux.temp
    if [ -e "~/.local/state/nvim/swap//%home%wrq%.cache%tmux.temp.swp" ];then
        rm ~/.local/state/nvim/swap//%home%wrq%.cache%tmux.temp.swp
    fi
    tmux new-window -n BufferEditor "$EDITOR ~/.cache/tmux.temp" 
}

case $1 in
    edit_pane)
        edit_pane
        ;;
    *)
        echo "miss arg"
        ;;
esac