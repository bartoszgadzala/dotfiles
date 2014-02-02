#!/bin/sh

SESSION=$USER

tmux has-session -t $SESSION || {
	echo Creating session
	tmux new-session -d -s $SESSION -n 'News' 'canto'
	tmux new-window -t $SESSION:1 -n 'Music' 'ncmpcpp'
	tmux new-window -t $SESSION:2 -n 'Mail' 'mutt'
	tmux new-window -t $SESSION:3 -n 'IM' 'mcabber'
	tmux new-window -t $SESSION:4
	tmux select-window -t $SESSION:4
}
tmux -2 attach-session -t $SESSION
