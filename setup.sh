#!/usr/bin/env bash

echo "Creating symlinks..."

if ! [[ -L $HOME/.vimrc ]]; then
  ln -s `pwd`/vimrc $HOME/.vimrc
fi

if ! [[ -L $HOME/.vim ]]; then
  ln -s `pwd` $HOME/.vim
fi

echo "VIM Submodules..."
git submodule init
git submodule update

echo "Installing gems..."
bundle

echo "Installing npm instant-markdown-d packages..."
sudo npm -g install instant-markdown-d

vim +BundleInstall!
