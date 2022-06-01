" enables syntax highlighting
syntax on

" sets 256 terminal colors
set t_Co=256

" shows line numbers
set number

" sets how many lines of history to remember
set history=500

" set to automatically read changes made outside vim
set autoread 
au FocusGained,BufEnter * checktime

" sets the cursor to stop 7 from the bottom when scrolling
set so=7

" enables the wild menu for a wild time
set wildmenu

" enables the ruler to help with navigation
set ruler

" sets backspace to act correctly
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search options that set case behavior and highlighting
set ignorecase
set smartcase
set hlsearch
set incsearch

" don't redraw the window as often. For performance
set lazyredraw

" makes regular expressions better
set magic

" show matching brackets
set showmatch
set mat=2

" turn off sounds and alerts
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" disable backups. I don't need no backups!
set nobackup
set noswapfile

" use tabs not spaces
set noexpandtab

" sets tabs to 4 spaces
set shiftwidth=4
set tabstop=4

" improves indent behavior 
set autoindent
set smartindent

" enable wrapping
set wrap

" disables .viminfo
let skip_defaults_vim=1
set viminfo=""

" allows writing as root with w!!
cmap w!! %!sudo tee > /dev/null %

" enable vim-plug
source ~/.vim/plugins.vim

" gruvbox configuration
let g:gruvbox_italic = 1
colorscheme gruvbox
set bg=dark

" turn on spell checking
set spell spelllang=en_us
hi SpellBad cterm=underline
