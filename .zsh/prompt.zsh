# turn on prompt subsititution
setopt prompt_subst

# prompt util functions
function p_arrow() {
	echo "%F{cyan}»%f"
}

function p_colored_path() {
	local slash="%F{cyan}/%f"
	echo "${${PWD/#$HOME/~}//\//$slash}"
}

function p_environments() {
	local envs
	[[ -n $SSH_CLIENT ]] && envs+="SSH"

	[[ -n $envs ]] && echo $envs
}

function p_vcs() {
}

prompt='%F{blue}λ%f $(p_colored_path) $(p_environments) $(p_vcs)
$(p_arrow) '
