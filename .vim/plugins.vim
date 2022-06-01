" enable vim-plug
call plug#begin('~/.vim/plugged')

" gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Fugitive. A git wrapper
Plug 'tpope/vim-fugitive'

" Automatic completion
Plug 'valloric/youcompleteme'

" Sensible defaults
Plug 'tpope/vim-sensible'

" Python highlighting
Plug 'hdima/python-syntax'
let python_highlight_all=1

" Tons of syntax highlighting
Plug 'sheerun/vim-polyglot'

" Debugger
Plug 'joonty/vdebug'

" fzf vim integration
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" autoclose parens and quotes
Plug 'Raimondi/delimitMate'

" autoclose html tags
Plug 'alvan/vim-closetag'

" Vim wiki
Plug 'vimwiki/vimwiki'
set nocompatible
filetype plugin on

" end plugins
call plug#end()

