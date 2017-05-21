export EDITOR=nvim
export VISUAL=nvim
export GIT_EDITOR=$EDITOR

if [[ -d "$HOME/go" ]]; then
	export GOPATH=$HOME/go
	export PATH="$PATH:$GOPATH/bin"
fi
