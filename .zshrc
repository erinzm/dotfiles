alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot_zsh=$HOME/.zsh

autoload -Uz compinit promptinit colors select-word-style
compinit -i
promptinit
colors

select-word-style "bash"

# set up history
HISTFILE=$HOME/.zsh_history
HISTSIZE=200
SAVEHIST=200
setopt hist_ignore_space
setopt append_history
setopt hist_ignore_dups
setopt share_history # share history between sessions

# misc options
setopt extended_glob

user_modules=(
	'path'
	'utils'
	'prompt'
	'etcvars'
	'colors'
	'behavior'
	'term'
	'k'
	"machine-$(hostname)"
	)

for module in $user_modules; {
	[[ -e $dot_zsh/$module.zsh ]] && source $dot_zsh/$module.zsh
}

