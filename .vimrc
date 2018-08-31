:syntax on
:set number
:set relativenumber
:set modeline
:set list
:set lcs=tab:>-,eol:¬,trail:▒
:set laststatus=2

set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

:set tabstop=4
:set expandtab
:set shiftwidth=4
:set softtabstop=4

:set backspace=indent,eol,start

:imap jj <Esc>

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
autocmd vimenter * NERDTree

let g:deoplete#enable_at_startup = 1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'ervandew/supertab'

Plugin 'flazz/vim-colorschemes'

" Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/neco-syntax'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
