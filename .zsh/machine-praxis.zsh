typeset -U path

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64:/opt/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/opt/cuda
export PYTHONPATH=$HOME/build/caffe-rc4/python:$PYTHONPATH

# RubyGems configuration
export GEM_HOME=$(ruby -rubygems -e "puts Gem.user_dir")

path+=(
	$HOME/.cargo/bin
	$GEM_HOME/bin
	$path)

# OPAM configuration
. /home/liam/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# added by travis gem
[ -f /home/liam/.travis/travis.sh ] && source /home/liam/.travis/travis.sh
