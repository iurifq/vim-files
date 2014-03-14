#!/usr/bin/env bash

echo "For better results, make sure you have: curl, npm, git, bundler, exuberant-ctags and silver searcher"

echo "Creating symlinks..."

for file in 'vimrc' 'gvimrc'
do
  if ! [[ -L $HOME/.$file ]]; then
    ln -s `pwd`/$file $HOME/.$file
  fi
done

if ! [[ -L $HOME/.vim ]]; then
  ln -s `pwd` $HOME/.vim
fi

echo "Setting up package manager..."
git clone git://github.com/Shougo/neobundle.vim.git bundle/neobundle.vim

echo "Installing gems..."
bundle

echo "Installing npm packages..."
sudo npm -g install instant-markdown-d coffee-script coffeelint

vim
