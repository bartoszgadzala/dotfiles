# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Local configuration
if [ -f .bash_local ]; then
	. .bash_local
fi

if [ -f .profile ]; then
	. .profile
fi

# Google Cloud SDK.
if [ -f google-cloud-sdk/path.bash.inc ]; then
	. google-cloud-sdk/path.bash.inc
fi

# Bash completion for gcloud.
if [ -f google-cloud-sdk/completion.bash.inc ]; then
	. google-cloud-sdk/completion.bash.inc
fi

# Aliases
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -l"
alias la="ls -a"
alias yum="sudo yum -y"
alias umount="sudo umount"
alias bim="vim"
if [[ $TERM == *256* ]]; then
	alias tmux="tmux -2"
fi

# Path
export PATH=$PATH:~/bin

# Settings
export EDITOR="vim"

# Dircolors
if [[ $TERM == xterm* ]]; then
	eval `dircolors ~/.dir_colors`
	export TERM=xterm-256color 
fi

# MC
export MC_SKIN=$HOME/.mc/solarized.ini

# Powerline
function _update_ps1() {
	if [[ -f ~/bin/powerline-shell/powerline-shell.py ]] && [[ $TERM == *256* ]] && [[ ! `ps $PPID | grep 'mc\|gjs\|qmlscene'` ]]; then
		export PS1="$(~/bin/powerline-shell/powerline-shell.py $? 2> /dev/null)"
	else
		export PS1="[\u@\h \W]\\$ "
	fi
}
export PROMPT_COMMAND="_update_ps1"

# Mopidy
if [ ! "$(pgrep mopidy)" ]; then (mopidy &> /dev/null &); fi

# Update RSS feeds
if [ ! "$(pgrep canto-fetch)" ]; then (canto-fetch -db &> /dev/null &); fi


if [ -d .rvm ]; then
	source ~/.rvm/scripts/rvm
	export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
fi
