set nocompatible
let g:molokai_original=1
colorscheme molokai

autocmd BufNewFile, BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set noexpandtab
set tabstop=4 shiftwidth=4
set encoding=utf8 ffs=unix,dos,mac
set ruler noerrorbells novisualbell noswapfile nobackup nowb smarttab number

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 0

let g:vim_markdown_folding_disabled=1

" Ctrl-h to toggle search higlighting.
nnoremap <C-h> :set hls!

" <esc> to clear the last search highlight.
nnoremap <esc> :noh<return><esc>

" Ctrl-r to search & replace selected text.
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set guioptions+=lrb
	set guioptions-=lrb
endif

" Configure vundle before turning on filetype rules
filetype plugin indent off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle. Required! 
Bundle 'gmarik/vundle'

Bundle 'plasticboy/vim-markdown'
Bundle 'othree/html5.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-fugitive'
Bundle 'junegunn/vim-easy-align'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'mklabs/grunt.vim'
Bundle 'mattn/emmet-vim'
Bundle 'gkz/vim-ls'
Bundle 'lunaru/vim-twig'
Bundle 'scrooloose/syntastic'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'joonty/vim-xdebug.git'

" Go lang
set runtimepath+=$GOROOT/misc/vim

" Enable filetype plugins
filetype plugin indent on
au BufRead,BufNewFile *.ls set syntax=ls

set ofu=syntaxcomplete#Complete
