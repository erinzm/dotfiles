set nocompatible " turn off tons of old, useless, backwards-compatible stuff

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'

" ui
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

" util
Plug 'editorconfig/editorconfig-vim'
Plug 'qpkorr/vim-bufkill'

" color scheme
Plug 'tomasr/molokai'

" syntax
Plug 'sheerun/vim-polyglot'
call plug#end()

set history=500 " command history length

set t_Co=256 " let Vim know we're on a 256-color terminal

filetype plugin on
filetype indent on

set autoread " automatically reread files that have been edited outside of Vim

set hidden " keep non-visible buffers loaded

set wildmenu " nicer completion for commands
set wildmode=longest:full,full

set ruler  " line numbers in the status bar
set number " gutter with line-numbers

if has('mouse')
	set mouse=a " make sure all mouse features are turned on
end

set ignorecase " ignore case in patterns
set smartcase  " override ignorecase if pattern contains upper-case characters
set incsearch  " scroll to search matches
set hlsearch   " highlight search matches

set showmatch  " briefly jump to the matching bracket when a bracket is inserted

syntax on " turn on syntax-highlighting

set encoding=utf8 " force utf8 globally

set nobackup   " turn off file backups (they clutter the filesystem with tons of spurious ## files)
set nowb
set noswapfile " load all buffers *into memory*. this can cause problems with large files,
		   	   " but it generally accelerates loading and paging smaller files.

set smarttab
set sw=4 " 4-space tabs
set ts=4

set wrap " line wrapping
set lbr  " wrap on whitespace instead of last displayable char
set ai   " autoindent

set laststatus=2 " always show the status line

" color scheme
let g:rehash256 = 1
colorscheme molokai
