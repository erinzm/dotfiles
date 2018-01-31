set nocompatible " turn off tons of old, useless, backwards-compatible stuff

set rtp^=/usr/share/vim/vimfiles " load stuff from the system Vim path (gj, neovim and Arch Linux)


call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'

" ui
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-vinegar'

" util
Plug 'editorconfig/editorconfig-vim'
Plug 'qpkorr/vim-bufkill'

" vcs
Plug 'tpope/vim-fugitive'

" color scheme
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'dikiaap/minimalist'
Plug 'tssm/fairyfloss.vim'

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'LaTeX-Box-Team/LaTeX-Box'
call plug#end()

set history=500 " command history length

set t_Co=256 " let Vim know we're on a 256-color terminal
"set termguicolors

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

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 " always show the status line

let g:netrw_liststyle = 3    " make netrw display a tree view
let g:netrw_banner = 0       " remove the useless directory banner
let g:netrw_browse_split = 4 " netrw should open files in the last-used window
let g:netrw_altv = 1


" color scheme
let g:airline_theme='minimalist'
colorscheme minimalist
"colorscheme fairyfloss

let g:polyglot_disabled = ['latex']


