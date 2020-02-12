set rtp^=/usr/share/vim/vimfiles " load stuff from the system Vim path (gj, neovim and Arch Linux)

call plug#begin(stdpath('data') . '/plugged')

" æsthetic
Plug 'tssm/fairyfloss.vim'

" Stuff
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'majutsushi/tagbar'

Plug 'scrooloose/nerdcommenter'


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'

Plug 'junegunn/fzf.vim'

Plug 'junegunn/vim-easy-align'
Plug 'dkarter/bullets.vim'

Plug 'chrisbra/Colorizer'

call plug#end()

set termguicolors
colorscheme fairyfloss

let g:deoplete#enable_at_startup = 1

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
