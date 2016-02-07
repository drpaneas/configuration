#######################
Personal Configuration
#######################

:Authors: Panos Georgiadis
:Version: 1.0 of 2016-02-07


vim configuration
=================

:Note: Note that this will replace your `.vimrc` file
       so in case you need your old configuration
       please make sure you have a backup.


**Installation**

   Just copy and paste the following command in your terminal
   and it will do all the work for you.

.. code-block:: bash

  curl bit.ly/1UU8PGD -L -o - | sh


Gnome Terminal Theme
====================

Do the following:

.. code-block:: bash

  git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
  bash gnome-terminal-colors-solarized/install.sh

  This script will ask you which color scheme you want, and which Gnome Terminal profile to overwrite.

  Please note that there is no uninstall option yet. If you do not wish to overwrite any of your profiles, you should create a new profile before you run this script. However, you can reset your colors to the Gnome default, by running:

      Gnome >= 3.8 dconf reset -f /org/gnome/terminal/legacy/profiles:/
      Gnome < 3.8 gconftool-2 --recursive-unset /apps/gnome-terminal

  By default, it runs in the interactive mode, but it also can be run non-interactively, just feed it with the necessary options, see 'install.sh --help' for details.

  Please select a color scheme:
  1) dark
  2) dark_alternative
  3) light
  #? 1

  Please select a Gnome Terminal profile:
  1) :b1dcc9dd-5262-4d8d-a863-c897e6d979b9 (No name)
  #? 1

  You have selected:

    Scheme:  dark
    Profile: :b1dcc9dd-5262-4d8d-a863-c897e6d979b9 (No name) (:b1dcc9dd-5262-4d8d-a863-c897e6d979b9)

  Are you sure you want to overwrite the selected profile?
  (YES to continue) YES
  Confirmation received -- applying settings



