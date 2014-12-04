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
function _update_ps1()
{
	if  [ -x ~/bin/powerline-zsh/powerline-zsh.py ]; then
		export PROMPT="$(~/bin/powerline-zsh/powerline-zsh.py $?)"
	else
		export PROMPT='[%n@%m]%~%# '
	fi
}
precmd()
{
	_update_ps1
}

# Path
export PATH=$PATH:~/bin

# Settings
export EDITOR="vim"
export MC_SKIN=$HOME/.mc/solarized.ini
