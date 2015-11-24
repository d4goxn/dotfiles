set nocompatible

let mapleader = ","

let g:molokai_original=1
colorscheme molokai

autocmd BufNewFile, BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o formatoptions+=j formatoptions+=n

" Strip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set tabstop=4 shiftwidth=4 softtabstop=0
set encoding=utf8 ffs=unix,dos,mac
set ruler noerrorbells novisualbell noswapfile nobackup nowb smarttab number noexpandtab

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
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-clojure-highlight'
Bundle 'airblade/vim-gitgutter'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'justmao945/vim-clang'
Bundle 'rhysd/vim-clang-format'
Plugin 'bling/vim-airline'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra' " Root dir is the git root, or the directory of the current file.
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|bower_components)$',
  \ }

" Go lang
set runtimepath+=$GOROOT/misc/vim

" Enable filetype plugins
filetype plugin indent on
au BufRead,BufNewFile *.ls set syntax=ls

set ofu=syntaxcomplete#Complete

au VimEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au Syntax markdown setlocal spell spelllang=en_ca
au FileType make set noexpandtab

let g:syntastic_javascript_checkers = ['eslint', 'jscs']
let g:syntastic_aggregate_errors = 1

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
