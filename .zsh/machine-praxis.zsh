typeset -U path

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64:/opt/cuda/extras/CUPTI/lib64:"
export CUDA_HOME=/opt/cuda
export PYTHONPATH=$HOME/software/rdkit:$HOME/build/caffe-rc4/python:$PYTHONPATH

# RubyGems configuration
export GEM_HOME=$(ruby -rrubygems -e "puts Gem.user_dir")

path+=(
	$HOME/.cargo/bin
	$GEM_HOME/bin
	$HOME/.config/yarn/global/node_modules/.bin/
	$path)

# added by travis gem
[ -f /home/liam/.travis/travis.sh ] && source /home/liam/.travis/travis.sh
