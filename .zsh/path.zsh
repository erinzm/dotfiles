typeset -U path

path+=(
	$HOME/bin
	$HOME/.local/bin
	$HOME/.cargo/bin
	$(ruby -rubygems -e "puts Gem.user_dir")/bin

	$path)

# OPAM configuration
. /home/liam/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
