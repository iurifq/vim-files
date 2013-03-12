syn on " colored syntax

set number " line numbers
set clipboard=unnamedplus " tries to use system clipboard
set cursorline

if has("gui_running")
    colorscheme molokai
else
    colorscheme delek
endif

filetype plugin indent on

" autocompletion with a menu
set wildmenu
set wildmode=list:longest,full

" Search options
set ignorecase
set smartcase " considers case when it is used, on the contrary don't
set incsearch " search while typing
set hlsearch "highlight all ocurrences of a pattern

set tabstop=4 shiftwidth=4 softtabstop=4 backspace=indent,eol,start expandtab

if has("gui_running")
    " set guioptions-=T " turn off toolbar
    " set guioptions-=r " turn off right scrollbar
    " set guioptions-=l " turn off left scrollbar
    " set guioptions=m " turn on menu bar
    set guioptions= " turn off all
endif
" Display extra whitespace
set list listchars=tab:»…,trail:…

" Backup directory
set backupdir=~/.vim_bkp//
set directory=~/.vim_bkp//

" Highlighting lines longer than 80 columns
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
set scrolloff=10
