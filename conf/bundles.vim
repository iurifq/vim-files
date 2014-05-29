NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'jasoncodes/ctrlp-modified.vim'

NeoBundle 'honza/vim-snippets'

NeoBundle 'Raimondi/delimitMate'

NeoBundle 'bling/vim-airline'

NeoBundle 'mbbill/undotree'

NeoBundle 'scrooloose/syntastic'

NeoBundle 'bkad/CamelCaseMotion'

NeoBundle 'nelstrom/vim-visual-star-search'

NeoBundle 'iurifq/vim-travis-ci', {'depends' : [
      \ 'mattn/webapi-vim',
      \ 'tpope/vim-fugitive'
      \ ]}
NeoBundle 'iurifq/ctrlp-rails.vim', {'depends' : 'kien/ctrlp.vim' }

NeoBundle 'mjbrownie/swapit'

NeoBundle 'Shougo/vimshell.vim', { 'depends' : [[
      \ 'Shougo/vimproc', {
      \   'build' : {
      \       'windows' : 'make -f make_mingw32.mak',
      \       'cygwin' : 'make -f make_cygwin.mak',
      \       'mac' : 'make -f make_mac.mak',
      \       'unix' : 'make -f make_unix.mak',
      \      }
      \ }]]}

NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'

NeoBundle 'vim-scripts/sudo.vim'

NeoBundle 'sickill/vim-pasta'
NeoBundle 'mhinz/vim-startify'

NeoBundle 'rking/ag.vim'

NeoBundle 'wellle/targets.vim'

if has("gui_macvim")
  " Dash OSX app plugin and funcoo dependecy
  NeoBundle 'rizzatti/dash.vim', {'depends' : 'rizzatti/funcoo.vim' }
endif

" tpope <3
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-abolish'

" Languages/technologies support

NeoBundle 'dag/vim-fish'

NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nono/vim-handlebars'

NeoBundle 'elixir-lang/vim-elixir'

NeoBundle 'rosstimson/scala-vim-support'

NeoBundle 'ap/vim-css-color'

NeoBundle 'othree/xml.vim'

NeoBundle 'suan/vim-instant-markdown'

" Ruby related
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'rking/vim-ruby-refactoring', { 'depends' : 'Spaceghost/vim-matchit'}
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'nelstrom/vim-textobj-rubyblock', { 'depends' : [
      \ 'kana/vim-textobj-user',
      \ 'Spaceghost/vim-matchit'
      \ ]}
NeoBundle 'jgdavey/vim-blockle'

" Git related
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'mattn/gist-vim', { 'depends' : 'mattn/webapi-vim' }

" Themes
NeoBundle 'tomasr/molokai'
NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

NeoBundleCheck
