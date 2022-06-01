" enable vim-plug
call plug#begin('~/.vim/plugged')

" Automatic completion
Plug 'valloric/youcompleteme'

" Sensible defaults
Plug 'tpope/vim-sensible'

" Tons of syntax highlighting
" get all langs highlighted?
Plug 'sheerun/vim-polyglot'
let g:python_highlight_all = 1

" autoclose parens and quotes
Plug 'Raimondi/delimitMate'

" autoclose html tags
Plug 'alvan/vim-closetag'

" Vim wiki
Plug 'vimwiki/vimwiki'
set nocompatible
filetype plugin on

" Nice status bar. TODO figure out what it does
Plug 'vim-airline/vim-airline'

" Show which lines will have git diffs in the sidebar
" Plug 'airblade/vim-gitgutter'
" set updatetime=100

" Be able to show a file tree
" TODO on by default?
Plug 'preservim/nerdtree'

" Show git status in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Show nice icons in nerdtree
Plug 'ryanoasis/vim-devicons'

" Highlight files in nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Nice commenting things
Plug 'preservim/nerdcommenter'

" Nifty things for delimaters
Plug 'tpope/vim-surround'

" Git wrapper
" TODO decide if this should be a thing in vim?
" Plug 'tpope/vim-fugitive'

" end plugins
call plug#end()
