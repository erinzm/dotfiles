typeset -U path

export CUDA_HOME=/opt/cuda
export GUROBI_HOME=/opt/gurobi752/linux64

# RubyGems configuration
export GEM_HOME=$(ruby -rrubygems -e "puts Gem.user_dir")

path+=(
	$HOME/.cargo/bin
	$GEM_HOME/bin
	$HOME/.config/yarn/global/node_modules/.bin/
	$path)

# added by travis gem
[ -f /home/liam/.travis/travis.sh ] && source /home/liam/.travis/travis.sh

eval $(dircolors -b "$HOME/.dircolors")

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

alias steam-wine='optirun wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe'

eval $(thefuck --alias)

export LEDGER_FILE="$HOME/finance/2018.journal"

if [[ $TERM == xterm-termite ]]; then
	. /etc/profile.d/vte.sh
	__vte_osc7
	export TERM=rxvt-unicode-256color
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/liam/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/liam/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/liam/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /home/liam/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
