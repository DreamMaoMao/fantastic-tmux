# Prints tmux session info.
# Assuems that [ -n "$TMUX"].

run_segment() {
	tmux display-message -p '#S:#P/#{window_panes}'
	return 0
}
