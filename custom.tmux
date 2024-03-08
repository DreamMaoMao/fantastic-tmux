#!/usr/bin/env bash

edit_pane() {
    current_session=$(tmux display-message -p '#S')
    tmux capture-pane -p -S 0 -t $current_session > ~/.cache/tmux.temp
    if [ -e "~/.local/state/nvim/swap//%home%wrq%.cache%tmux.temp.swp" ];then
        rm ~/.local/state/nvim/swap//%home%wrq%.cache%tmux.temp.swp
    fi
    tmux new-window -n BufferEditor "$EDITOR ~/.cache/tmux.temp" 
}

move_win_to_right() {
    tmux swap-window -t +1
    tmux next-window
}

move_win_to_left() {
    tmux swap-window -t -1
    tmux previous-window
}

case $1 in
    edit_pane)
        edit_pane
        ;;
    move_win_to_right)
        move_win_to_right
        ;;
    move_win_to_left)
        move_win_to_left
        ;;
    *)
        echo "miss arg"
        ;;
esac