#!/bin/bash

git clone https://github.com/drpaneas/configuration.git
cd configuration
cp .vimrc $HOME
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -O solarized.vim
vim +PluginInstall +qall
cd $HOME


