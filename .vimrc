colorscheme desert
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

au BufRead,BufNewFile *.md set filetype=Markdown

nnoremap <F12>f :exe ':silent !firefox %'<CR>
nnoremap <F12>c :exe ':silent !chromium-browser %'<CR>

" Enable filetype plugins
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete

call pathogen#infect()
