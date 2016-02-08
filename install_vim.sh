#!/bin/bash

#######
# VIM #
#######
git clone https://github.com/drpaneas/configuration.git
cd configuration
cp .vimrc $HOME
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -O solarized.vim
vim +PluginInstall +qall
cd $HOME

#########
# Gnome #
#########

number_of_profiles=$(dconf list /org/gnome/terminal/legacy/profiles:/ | wc -l)

if [ "$number_of_profiles" -gt 1 ]; then
  echo "You have more than 1 profiles and I am too lazy to configure them"
  echo
  echo "Go to:"
  echo "Edit > Colors"
  echo "Text and Background Color -->  Built-in schemes: Solarized dark"
  echo "Palette --> Built-in schemes: Solarized"
else
  # take your profile
  profile=$(dconf list /org/gnome/terminal/legacy/profiles:/)

  # Remove '/' from the end of the profile variable
  profile=$(echo "${profile::-1}")

  # Use theme colors
  dconf write /org/gnome/terminal/legacy/profiles:/$profile/use-theme-colors "false"

  # Background color
  dconf write /org/gnome/terminal/legacy/profiles:/$profile/background-color "'rgb(0,43,54)'"

  # Foreground color
  dconf write /org/gnome/terminal/legacy/profiles:/$profile/foreground-color "'rgb(131,148,150)'"

  # Use Transparent background
  dconf write /org/gnome/terminal/legacy/profiles:/$profile/use-transparent-background "false"

  # Solarized Palete
  dconf write /org/gnome/terminal/legacy/profiles:/$profile/palette "['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(133,153,0)', 'rgb(181,137,0)', 'rgb(38,139,210)', 'rgb(211,54,130)', 'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,43,54)', 'rgb(203,75,22)', 'rgb(88,110,117)', 'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"
fi
