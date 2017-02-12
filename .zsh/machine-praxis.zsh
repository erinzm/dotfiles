typeset -U path

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64:/opt/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/opt/cuda
export PYTHONPATH=$HOME/build/caffe-rc4/python:$PYTHONPATH

path+=(
	$HOME/.cargo/bin
	$(ruby -rubygems -e "puts Gem.user_dir")/bin
	$path)

# OPAM configuration
. /home/liam/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

