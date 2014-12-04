# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bartek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompt: powerline
function powerline_precmd() {
	if  [ -x ~/bin/powerline-shell/powerline-shell.py ]; then
		export PS1="$(~/bin/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null)"
	else
		export PROMPT='[%n@%m]%~%# '
	fi
}
function install_powerline_precmd() {
	for s in "${precmd_functions[@]}"; do
		if [ "$s" = "powerline_precmd" ]; then
			return
		fi
	done
	precmd_functions+=(powerline_precmd)
}
install_powerline_precmd

# Path
export PATH=$PATH:~/bin

# Settings
export EDITOR="vim"
export MC_SKIN=$HOME/.mc/solarized.ini
