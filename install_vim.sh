#!/bin/bash

git clone https://github.com/drpaneas/configuration.git
cd configuration
cp .vimrc $HOME
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget http://www.vim.org/scripts/download_script.php?src_id=13400 -O wombat256mod.vim
wget https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/proton.vim -O proton.vim
vim +PluginInstall +qall
cd $HOME
