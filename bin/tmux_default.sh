#!/bin/sh

SESSION=$USER

tmux has-session -t $SESSION || {
	echo Creating session
	tmux new-session -d -s $SESSION
	tmux new-window -t $SESSION:1 -n 'News' 'canto'
	tmux new-window -t $SESSION:2 -n 'Music' 'if [ ! "$(pgrep mopidy)" ]; then (mopidy &> /dev/null &); fi; ncmpcpp'
	tmux select-window -t $SESSION:0
}
tmux -2 attach-session -t $SESSION
