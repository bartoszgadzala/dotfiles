#!/bin/sh

SESSION=$USER

tmux has-session -t $SESSION || {
	echo Creating session
	tmux new-session -d -s $SESSION -n 'Stats' 'glances'
	tmux new-window -t $SESSION:1 -n 'News' 'canto'
	tmux new-window -t $SESSION:2 -n 'Music' 'ncmpcpp'
	tmux new-window -t $SESSION:3 -n 'Mail' 'mutt'
	tmux new-window -t $SESSION:4 -n 'IM' 'mcabber'
	tmux new-window -t $SESSION:5
	tmux select-window -t $SESSION:5
}
tmux -2 attach-session -t $SESSION
