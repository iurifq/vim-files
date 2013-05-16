vim-files
=========

## Installation

The script `setup.sh` should be enough to make symbolic links and install required
dependencies. However, some dependencies should be manually installed. Make sure you
have installed: curl, npm, git, bundler, exuberant-ctags. It is tested in both
linux(Ubuntu 12.10, 13.04) and OSX(Lion and Mountain Lion).

## Plugins

The most important plugins I use are:

* [Vundle] - nice and simple package manager
* [unimpaired.vim] - many useful mappings for back and forth operations
* [surround.vim] - modify surrounding delimiters with a single keystroke
* [repeat.vim] - add repeat funcionality with `.` command for many of Tim Pope's
  plugins
* [dispatch.vim] - from within vim, run many shell commands with assynchronous
  support
* [endwise.vim] - closes blocks like `if`, `for` automagically
* [abolish.vim] - abolish typos with a smart abbreviation schema and some other
  cool features
* [vim-css-color] - highlight colors written in css files
* [Indent Guides] - includes indentation lines to help you not get lost inside blocks
* [Supertab] - plugin for smart completion
* [NerdCommenter] - easily comment and uncomment lines, blocks, etc.
* [ctrlp.vim] - fucking killer command to open files
* [ctrlp-modified.vim] - ctrlp.vim extension to open files modified since last commit
  and since branch creation
* [Tagbar] - adds a nice bar based on the tags for the current file.
* [vim-snippets] - snippets repository for many languages for both Snipmate &
  UltiSnip Snippets. Currently, I help mantaining Ruby snippets.
* [snipmate.vim] - snippets engine
* [delimitMate] - auto close of `()`, `[]`, `{}`
* [vim-powerline] - beatiful and useful status line. It's going to be deprecated
  in favor of a [new version][new powerline]. I'm sticking to the old one until that.
* [scala-vim-support] - scala indentation and syntax highlight
* [gundo.vim] - fucking awesome way to not loose nothing while undoing things
* [Syntastic] - syntactic rules for many languages
* [vim-textobj-user] - helps you define custom [text objects]
* [CamelCaseMotion] - move between camel case and snake case words
* [vim-tags] - easily ctags generation
* [xml.vim] - some goodies for our beloved xml editting
* [vim-visual-star-search] - fix strange behaviour for `*` in visual mode
* [Travis CI Vim] - plugin that I created for Travis CI build browsing
* [SwapIt] - adds nice feature of running `<C-A>` and `<C-X>` on words like `yes`,
  `no`, `true`, `false` and some others
* [vim-instant-markdown] - automatically preview markdown edited within Vim
* [rizzatti/dash.vim] - add Vim support for OSX Dash app
* [fugitive.vim] - cool git wrapper
* [gitv] - fugitive.vim extension to view git logs beatifully
* [vim-gitgutter] - adds nice signs warning about included, removed and modified lines
  related to git HEAD
* [textobj-gitgutter] - creates text objects related to Vim Git Gutter hunks(`ih`, `ah`)
* [gist-vim] - creates, lists, reads, edits gists from within Vim
* [vim-ruby] - helps editing Ruby source code
* [vim-ruby-refactoring] - helps ruby code refactor
* [rails.vim] - helps editing Rails apps
* [vim-textobj-rubyblock] - creates Vim text objects for ruby code(`ir`, `ar`). Also
  lets you use `%` to move between `do .. end`, `if .. end` and other paired ruby
  keywords

[Vundle]: https://github.com/gmarik/vundle
[unimpaired.vim]: https://github.com/gmarik/tpope/vim-unimpaired
[surround.vim]: https://github.com/gmarik/tpope/vim-surround
[repeat.vim]: https://github.com/gmarik/tpope/vim-repeat
[dispatch.vim]: https://github.com/tpope/vim-dispatch
[endwise.vim]: https://github.com/tpope/vim-endwise
[abolish.vim]: https://github.com/tpope/vim-abolish
[vim-css-color]: https://github.com/ap/vim-css-color
[Indent Guides]: https://github.com/nathanaelkane/vim-indent-guides
[Supertab]: https://github.com/ervandew/supertab
[NerdCommenter]: https://github.com/scrooloose/nerdcommenter
[ctrlp.vim]: https://github.com/kien/ctrlp.vim
[ctrlp-modified.vim]: https://github.com/jasoncodes/ctrlp-modified.vim
[Tagbar]: https://github.com/majutsushi/tagbar
[vim-snippets]: https://github.com/honza/vim-snippets
[snipmate.vim]: https://github.com/garbas/vim-snipmate
[delimitMate]: https://github.com/Raimondi/delimitMate
[vim-powerline]: https://github.com/Lokaltog/vim-powerline
[new powerline]: https://github.com/Lokaltog/powerline
[scala-vim-support]: https://github.com/rosstimson/scala-vim-support
[gundo.vim]: https://github.com/sjl/gundo.vim
[Syntastic]: https://github.com/scrooloose/syntastic
[vim-textobj-user]: https://github.com/kana/vim-textobj-user
[text objects]: http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide
[CamelCaseMotion]: https://github.com/bkad/CamelCaseMotion
[vim-tags]: https://github.com/szw/vim-tags
[xml.vim]: https://github.com/othree/xml.vim
[vim-visual-star-search]: https://github.com/nelstrom/vim-visual-star-search
[Travis CI Vim]: https://github.com/iurifq/vim-travis-ci
[SwapIt]: https://github.com/mjbrownie/swapit
[vim-instant-markdown]: https://github.com/suan/vim-instant-markdown
[rizzatti/dash.vim]: https://github.com/rizzatti/dash.vim
[fugitive.vim]: https://github.com/tpope/vim-fugitive
[gitv]: https://github.com/gregsexton/gitv
[vim-gitgutter]: https://github.com/airblade/vim-gitgutter
[textobj-gitgutter]: https://github.com/gilligan/textobj-gitgutter
[gist-vim]: https://github.com/mattn/gist-vim
[vim-ruby]: https://github.com/vim-ruby/vim-ruby
[vim-ruby-refactoring]: https://github.com/rking/vim-ruby-refactoring
[[rails.vim]: https://github.com/tpope/vim-rails
[vim-textobj-rubyblock]: https://github.com/nelstrom/vim-textobj-rubyblock
[Molokai]: https://github.com/tomasr/molokai

## Organization

This repository is organized in such a way to avoid what I call .vimrc hell. I created
it based on a [friend's vim files](https://github.com/jvortmann/vim-files).

### General settings

All editor settings are place in `conf` directory. General settings are placed in
`conf/autocmd.vim` and `conf/defaults.vim`. Shortcuts that are plugin independent
are placed in `conf/shortcuts.vim` file.

### Plugin settings

Each plugin has its entry in `conf/bundles.vim` file. This file is going to be
used by [Vundle]. Plugins that need custom settings have a file with its name in
`plugin` directory. All shortcuts plugins, plugin variables will be placed there.
Vim automatically loads all these files when it is starting up.

## Shortcuts

TODO
