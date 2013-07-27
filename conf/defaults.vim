syn on " colored syntax
set t_Co=256

set number " line numbers
if has("gui_macvim")
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
set cursorline

if isdirectory(expand("~/.vim/bundle/molokai"))
  colorscheme molokai
elseif isdirectory(expand("~/.vim/bundle/tomorrow-theme"))
  colorscheme Tomorrow-Night-Bright
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

set tabstop=2 shiftwidth=2 softtabstop=2 backspace=indent,eol,start expandtab

if has("gui_running")
  " set guioptions-=T " turn off toolbar
  " set guioptions-=r " turn off right scrollbar
  " set guioptions-=l " turn off left scrollbar
  " set guioptions=m " turn on menu bar
  set guioptions= " turn off all
endif

" Display extra whitespace
set list listchars=tab:▸\ ,trail:…

" Backup directory
set backupdir=$HOME/.vim/.swp-files//
set directory=$HOME/.vim/.swp-files//

" Highlighting lines longer than 80 columns
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
set scrolloff=10

" Automatically reload files if they were modified outside VIM
set autoread

" Automatic folding
set foldmethod=syntax
set nofoldenable

set shell=/bin/sh

let g:default_font = 'Source\ Code\ Pro'
if has("gui_macvim")
  let g:default_font_size = 14
  let g:font_separator = ':h'
else
  let g:default_font_size = 12
  let g:font_separator = '\ '
endif
