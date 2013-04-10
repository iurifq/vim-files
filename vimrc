let mapleader=","

source $HOME/.vim/conf/init.vim
source $HOME/.vim/conf/autocmd.vim
source $HOME/.vim/conf/bundles.vim
source $HOME/.vim/conf/shortcuts.vim
source $HOME/.vim/conf/defaults.vim

" load local configurations if they exist
if filereadable(expand("$HOME/.vimrc.local"))
  source $HOME/.vimrc.local
endif
