autoload -Uz add-zsh-hook

function xterm_title_precmd () {
	print -Pn '\e]2;%3.\a'
}

function xterm_title_preexec () {
	print -Pn '\e]2;%3. %# '
	print -n "${(q)1}\a"
}

if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi
